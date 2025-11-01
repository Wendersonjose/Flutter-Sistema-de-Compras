// Programa simples para calcular carrinho de compras com descontos
// Funciona no DartPad (sem Flutter)

void main() {
  print('=== SISTEMA DE CARRINHO DE COMPRAS ===\n');
  
  // Mapa principal: cliente -> produtos e preços
  Map<String, Map<String, double>> comprasClientes = {};
  
  // Simulando compras de três clientes diferentes
  print('--- Processando compras dos clientes ---\n');
  
  // Cliente 1: Maria
  print('Cliente: Maria');
  Map<String, double> comprasMaria = {};
  comprasMaria['Notebook'] = 2500.0;
  comprasMaria['Mouse'] = 45.0;
  comprasMaria['Teclado'] = 120.0;
  
  calcularCarrinho(comprasMaria, 'Maria');
  comprasClientes['Maria'] = comprasMaria;
  
  print(''); // Linha em branco
  
  // Cliente 2: João
  print('Cliente: João');
  Map<String, double> comprasJoao = {};
  comprasJoao['Smartphone'] = 800.0;
  comprasJoao['Fone de Ouvido'] = 150.0;
  comprasJoao['Carregador'] = 50.0;
  
  calcularCarrinho(comprasJoao, 'João');
  comprasClientes['João'] = comprasJoao;
  
  print(''); // Linha em branco
  
  // Cliente 3: Ana
  print('Cliente: Ana');
  Map<String, double> comprasAna = {};
  comprasAna['Livro'] = 35.0;
  comprasAna['Caneta'] = 12.0;
  comprasAna['Caderno'] = 25.0;
  
  calcularCarrinho(comprasAna, 'Ana');
  comprasClientes['Ana'] = comprasAna;
  
  print('\n=== RESUMO FINAL DAS COMPRAS ===\n');
  
  // Exibindo resumo de todos os clientes
  exibirResumoClientes(comprasClientes);
}

// Função para calcular o carrinho com descontos
double calcularCarrinho(Map<String, double> produtos, String nomeCliente) {
  print('Produtos no carrinho:');
  
  double valorTotal = 0.0;
  
  // Lendo cada produto e calculando o total
  produtos.forEach((produto, preco) {
    print('  - $produto: R\$ ${preco.toStringAsFixed(2)}');
    valorTotal += preco;
  });
  
  print('Valor total sem desconto: R\$ ${valorTotal.toStringAsFixed(2)}');
  
  // Aplicando descontos baseado no valor total
  double desconto = 0.0;
  double valorFinal = valorTotal;
  
  if (valorTotal >= 300.0) {
    // Se atingir R$ 300,00, aplica 20% de desconto
    desconto = 0.20;
    valorFinal = valorTotal * (1 - desconto);
    print('Desconto aplicado: 20% (R\$ ${(valorTotal * desconto).toStringAsFixed(2)})');
  } else if (valorTotal >= 100.0) {
    // Se atingir R$ 100,00, aplica 10% de desconto
    desconto = 0.10;
    valorFinal = valorTotal * (1 - desconto);
    print('Desconto aplicado: 10% (R\$ ${(valorTotal * desconto).toStringAsFixed(2)})');
  } else {
    print('Nenhum desconto aplicado (valor menor que R\$ 100,00)');
  }
  
  print('VALOR FINAL: R\$ ${valorFinal.toStringAsFixed(2)}');
  
  return valorFinal;
}

// Função para exibir resumo de todos os clientes
void exibirResumoClientes(Map<String, Map<String, double>> comprasClientes) {
  comprasClientes.forEach((cliente, produtos) {
    print('Cliente: $cliente');
    
    double total = 0.0;
    produtos.forEach((produto, preco) {
      total += preco;
    });
    
    // Calculando o valor final com desconto
    double valorFinal = total;
    String infoDesconto = '';
    
    if (total >= 300.0) {
      valorFinal = total * 0.80; // 20% de desconto
      infoDesconto = ' (com 20% de desconto)';
    } else if (total >= 100.0) {
      valorFinal = total * 0.90; // 10% de desconto
      infoDesconto = ' (com 10% de desconto)';
    }
    
    print('  Produtos: ${produtos.keys.join(', ')}');
    print('  Valor pago: R\$ ${valorFinal.toStringAsFixed(2)}$infoDesconto');
    print('');
  });
  
  // Calculando total geral
  double totalGeral = 0.0;
  comprasClientes.forEach((cliente, produtos) {
    double total = 0.0;
    produtos.forEach((produto, preco) {
      total += preco;
    });
    
    if (total >= 300.0) {
      totalGeral += total * 0.80;
    } else if (total >= 100.0) {
      totalGeral += total * 0.90;
    } else {
      totalGeral += total;
    }
  });
  
  print('TOTAL ARRECADADO: R\$ ${totalGeral.toStringAsFixed(2)}');
}
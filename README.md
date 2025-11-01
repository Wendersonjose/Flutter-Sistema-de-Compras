# Sistema de Carrinho de Compras 🛒

Um sistema simples e eficiente para calcular carrinho de compras com sistema de descontos automáticos, desenvolvido em Dart/Flutter.

## 📋 Descrição

Este projeto implementa um sistema de carrinho de compras que:
- Gerencia produtos e preços para múltiplos clientes
- Aplica descontos automáticos baseados no valor total da compra
- Gera relatórios detalhados de vendas
- Funciona tanto no DartPad quanto como aplicação Flutter

## ✨ Funcionalidades

### Sistema de Descontos
- **10% de desconto** para compras acima de R$ 100,00
- **20% de desconto** para compras acima de R$ 300,00
- Cálculo automático do valor final

### Relatórios
- Resumo individual por cliente
- Lista de produtos adquiridos
- Valores com e sem desconto
- Total geral arrecadado

### Gerenciamento
- Cadastro de múltiplos clientes
- Carrinho individualizado por cliente
- Cálculos em tempo real

## 🚀 Como Executar

### Pré-requisitos
- Flutter SDK (versão 3.9.2 ou superior)
- Dart SDK
- Editor de código (VS Code, Android Studio, etc.)

### Instalação e Execução

1. **Clone o repositório:**
```bash
git clone [url-do-repositório]
cd "Flutter Sistema de Compras"
```

2. **Instale as dependências:**
```bash
flutter pub get
```

3. **Execute a aplicação:**
```bash
flutter run
```

### Executar no DartPad
Você também pode executar o código diretamente no [DartPad](https://dartpad.dev) copiando o conteúdo do arquivo `carrinho_compras.dart`.

## 📁 Estrutura do Projeto

```
lib/
├── main.dart              # Aplicação Flutter principal
carrinho_compras.dart      # Versão DartPad (standalone)
pubspec.yaml              # Configurações do projeto
README.md                 # Este arquivo
```

## 🎯 Exemplo de Uso

### Saída do Sistema

```
=== SISTEMA DE CARRINHO DE COMPRAS ===

--- Processando compras dos clientes ---

Cliente: Maria
Produtos no carrinho:
  - Notebook: R$ 2500.00
  - Mouse: R$ 45.00
  - Teclado: R$ 120.00
Valor total sem desconto: R$ 2665.00
Desconto aplicado: 20% (R$ 533.00)
VALOR FINAL: R$ 2132.00

Cliente: João
Produtos no carrinho:
  - Smartphone: R$ 800.00
  - Fone de Ouvido: R$ 150.00
  - Carregador: R$ 50.00
Valor total sem desconto: R$ 1000.00
Desconto aplicado: 20% (R$ 200.00)
VALOR FINAL: R$ 800.00

Cliente: Ana
Produtos no carrinho:
  - Livro: R$ 35.00
  - Caneta: R$ 12.00
  - Caderno: R$ 25.00
Valor total sem desconto: R$ 72.00
Nenhum desconto aplicado (valor menor que R$ 100,00)
VALOR FINAL: R$ 72.00

=== RESUMO FINAL DAS COMPRAS ===

Cliente: Maria
  Produtos: Notebook, Mouse, Teclado
  Valor pago: R$ 2132.00 (com 20% de desconto)

Cliente: João
  Produtos: Smartphone, Fone de Ouvido, Carregador
  Valor pago: R$ 800.00 (com 20% de desconto)

Cliente: Ana
  Produtos: Livro, Caneta, Caderno
  Valor pago: R$ 72.00

TOTAL ARRECADADO: R$ 3004.00
```

## 🛠️ Tecnologias Utilizadas

- **Dart** - Linguagem de programação
- **Flutter** - Framework para desenvolvimento mobile
- **Maps** - Estrutura de dados para organização
- **Funções** - Modularização do código

## 📚 Conceitos Implementados

### Programação
- Uso de Maps aninhados para estrutura de dados
- Funções com parâmetros e retorno
- Loops e estruturas condicionais
- Formatação de números e strings

### Lógica de Negócio
- Sistema de descontos progressivos
- Cálculos matemáticos precisos
- Relatórios e resumos automáticos
- Validação de regras de negócio

## 🎓 Contexto Acadêmico

Este projeto foi desenvolvido para a disciplina de **Sistema Móvel** do **4º Período** da faculdade, demonstrando:
- Conhecimentos em Dart/Flutter
- Lógica de programação
- Estruturas de dados
- Desenvolvimento de sistemas comerciais simples

## 🤝 Contribuição

Para contribuir com este projeto:

1. Faça um fork do repositório
2. Crie uma branch para sua feature (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 📞 Contato

Desenvolvido como projeto acadêmico - Sistema Móvel 4º Período

---

⭐ Se este projeto te ajudou, considera dar uma estrela no repositório!

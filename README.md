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
- SDK do Dart instalado
- SDK do Flutter (opcional)

### Executando o Projeto

#### **Opção 1: DartPad Online (Recomendado)**
1. Acesse o [DartPad](https://dartpad.dev)
2. Copie o conteúdo do arquivo `carrinho_compras.dart`
3. Cole no DartPad
4. Clique em "Run"

#### **Opção 2: Dart Local**
```bash
# Clone o repositório
git clone https://github.com/Wendersonjose/Flutter-Sistema-de-Compras.git
cd Flutter-Sistema-de-Compras

# Execute o arquivo principal
dart run carrinho_compras.dart
```

#### **Opção 3: Flutter**
```bash
# Clone o repositório
git clone https://github.com/Wendersonjose/Flutter-Sistema-de-Compras.git
cd Flutter-Sistema-de-Compras

# Instale as dependências
flutter pub get

# Execute o projeto
flutter run
```

## 📁 Estrutura do Projeto

```
Flutter-Sistema-de-Compras/
├── 📂 android/                    # Configurações específicas para Android
│   ├── app/                       # Configurações da aplicação Android
│   │   ├── src/                   # Código fonte Android nativo
│   │   └── build.gradle.kts       # Build script do app Android
│   ├── gradle/                    # Wrapper do Gradle
│   ├── build.gradle.kts           # Build script principal Android
│   └── settings.gradle.kts        # Configurações do projeto Android
│
├── 📂 ios/                        # Configurações específicas para iOS
│   ├── Runner/                    # App principal iOS
│   │   ├── Assets.xcassets/       # Recursos visuais (ícones, imagens)
│   │   ├── Base.lproj/           # Arquivos de localização
│   │   └── AppDelegate.swift      # Delegado principal da aplicação iOS
│   ├── Runner.xcodeproj/          # Projeto Xcode
│   └── Runner.xcworkspace/        # Workspace do Xcode
│
├── 📂 linux/                      # Configurações para Linux Desktop
│   ├── flutter/                   # Configurações Flutter para Linux
│   └── runner/                    # Executável principal Linux
│
├── 📂 macos/                      # Configurações para macOS Desktop
│   ├── Flutter/                   # Configurações Flutter para macOS
│   ├── Runner/                    # App principal macOS
│   └── Runner.xcodeproj/          # Projeto Xcode para macOS
│
├── 📂 windows/                    # Configurações para Windows Desktop
│   ├── flutter/                   # Configurações Flutter para Windows
│   └── runner/                    # Executável principal Windows
│
├── 📂 web/                        # Configurações para Web
│   ├── icons/                     # Ícones para PWA
│   ├── index.html                 # Página principal HTML
│   └── manifest.json              # Manifesto da aplicação web
│
├── 📂 lib/                        # 🎯 CÓDIGO PRINCIPAL DA APLICAÇÃO
│   └── main.dart                  # Ponto de entrada do Flutter
│
├── 📂 test/                       # Testes automatizados
│   └── widget_test.dart           # Testes de widgets
│
├── 📄 carrinho_compras.dart       # 🎯 Versão standalone para DartPad
├── 📄 pubspec.yaml               # Dependências e configurações do projeto
├── 📄 analysis_options.yaml       # Regras de análise de código
├── 📄 README.md                  # Este arquivo de documentação
└── 📄 flutter_application_1.iml   # Configurações do IntelliJ/Android Studio
```

### 📂 **Pastas Principais Explicadas:**

#### **`lib/`** - Código da Aplicação
- **`main.dart`**: Arquivo principal que contém toda a lógica do sistema de compras
- Aqui ficaria todo o código Dart/Flutter da aplicação

#### **`android/`** - Plataforma Android
- Contém todas as configurações necessárias para compilar e executar no Android
- **`app/src/`**: Código nativo Android (se necessário)
- **`build.gradle.kts`**: Scripts de build para Android

#### **`ios/`** - Plataforma iOS
- Configurações para compilar e executar no iOS/iPadOS
- **`Runner/`**: Aplicação principal iOS
- **`Assets.xcassets/`**: Ícones e recursos visuais

#### **`web/`** - Plataforma Web
- **`index.html`**: Página web que carrega a aplicação Flutter
- **`manifest.json`**: Configurações para PWA (Progressive Web App)

#### **Desktop Platforms (`linux/`, `macos/`, `windows/`)**
- Configurações específicas para cada sistema operacional desktop
- Permitem executar a aplicação como app nativo

#### **`test/`** - Testes
- **`widget_test.dart`**: Testes automatizados da interface

#### **Arquivos de Configuração:**
- **`pubspec.yaml`**: Define dependências, versão, metadados do projeto
- **`analysis_options.yaml`**: Regras de qualidade de código
- **`carrinho_compras.dart`**: Versão simplificada para executar no DartPad

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

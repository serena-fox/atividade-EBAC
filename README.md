# Atividade-EBAC
Atividade do curso de Analise de dados EBAC
# Calculadora em Python

Calculadora de linha de comando desenvolvida em Python,
capaz de realizar as quatro operações matemáticas básicas.

---

## Pré-requisitos

- Python 3.x instalado
- Sistema operacional Linux, Mac ou Windows (com Git Bash)

---

## Como executar o arquivo .sh

O arquivo `executar.sh` é um script shell que verifica
se o Python está instalado e já inicia a calculadora automaticamente.

**1. Clone o repositório:**
git clone https://github.com/seu-usuario/calculadora-python.git

**2. Entre na pasta:**
cd calculadora-python

**3. Dê permissão de execução ao arquivo .sh:**
chmod +x executar.sh

**4. Execute:**
./executar.sh

---

## Explicação do código Python

### Estrutura geral
O código é dividido em 3 funções com responsabilidades separadas:

### `obter_numero(mensagem)`
Responsável por capturar a entrada do usuário.
Utiliza `try/except` para evitar que o programa trave
caso o usuário digite letras no lugar de números.
Fica em loop até receber um valor numérico válido.

### `calcular(numero1, operacao, numero2)`
Responsável por processar a operação matemática.
Recebe os dois números e o símbolo da operação,
retorna o resultado ou uma mensagem de erro
caso a operação seja inválida ou haja divisão por zero.

### `main()`
Função principal que controla o fluxo do programa.
Chama as outras funções na ordem correta,
exibe o resultado e pergunta se o usuário deseja continuar.

---

## Operações suportadas

| Símbolo | Operação |
|---------|----------|
| + | Adição |
| - | Subtração |
| * | Multiplicação |
| / | Divisão |

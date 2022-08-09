# Roteiro

Pré-requisitos de instalaçao:
- gfortran: em sistemas baseados em debian o pacote é comumente chamado "build-essential"
- python3: qualquer versao superior a 3.6
- pip3

Recomendaçoes:
- Editor vscode com o plugin "modern fortran"

## Parte 1 - Introdução ao Fortran

Requisitos de sintaxe (Fortran):
- Escalares do tipo `REAL` e `INTEGER`
- Escrever no stdout (`PRINT`)
- Vetores de tamanho estatico dos tipos acima
- Escalares constantes (`PARAMETER`)
- Constante com o valor de \pi
- Subrotinas
- Multiplicação de matrizes (`MATMUL()`)

Requisitos operacionais:
- Compilar um programa em fortran em um executavel utilizando o argumento "-o"
- Utilizar um arquivo bash (".sh") para facilitar a compilação
- Separar em pastas o código e os executáveis produzidos

## Parte 2 - Introduçao ao Python

Requisitos de sintaxe (Python):
- Variáveis
- Escrever no stdout (`print()`)
- Instalar módulos utilizando o gerenciador de pacotes "pip" (em algumas instalações "pip3")
- Importar funções matemáticas do "numpy" (`exp`, `atan`, ...) e escrever o resultado delas no stdout
- Importar as funções `print()` e `inspect()` do módulo "rich"
- Inspecionar o resultado de `inspect(print)`, `inspect(print)`, `inspect(numpy)` e `inspect(rich)`

Requisitos operacionais:
- Criar um script em python ".py"
- Executa-lo utilizando o interpretador na linha de comando
- Descobrir a versao do interpretador na linha de comando

## Parte 3 - Interoperabilidade Fortran e Python

Requisitos de sintaxe (Fortran):
- Argumentos de subrotinas, utilizar o keyword `INTENT()`
- Módulos
- Variáveis pertencentes a módulos
- Subrotinas pertencentes a módulos
- Utilizaçao de módulos em programas

Requisitos de sintaxe (Python):
- Criar um módulo local (dica: `__init__.py`)
- Importar uma biblioteca criada com o "f2py" (dica: o sufixo gerado ".cpython..." nao é explicitado)
- Inspecionar a biblioteca criada com o `inspect(...)`
- Acessar o módulo definido na biblioteca
- Acessar variáveis e subrotinas do módulo
- Passar e retornar valores para a subrotina do módulo chamada pelo python

Requisitos operacionais:
- Criar bibliotecas utilizando a ferramenta "f2py" que vem junta com o numpy (dica: utilize o argumento "-c" para indicar a compilação e "-m" para o nome do módulo gerado)
- Copiar o arquivo gerado para a pasta de arquivos compilados
- Criar um script em bash (".sh") para facilitar o processo (compilação + cópia)

## Implementação A - Integraçao eq. da onda

Tarefas no Fortran:

- Criar um módulo para a integração
- Defina as variáveis do módulo (ex: vetor de deslocamento `u(x, t)` de tamanho N por M)
- Defina uma subrotina que realiza M passos de integração
- Faça a implementaçao anterior de forma vetorizada (a integração é dada por uma multiplicação matricial)

Tarefas operacionais:

- Crie um diretório para o armazenamento dos dados produzidos
- Crie um script para facilitar a compilaçao do código
- Faça testes de sanidade no código de integraçao (ex: a condição de contorno `u(1, t) = u(N, t) = 0` deve ser satisfeita em qualquer t)

Tarefas no Python (integração):

- Importe o módulo gerado pelo "f2py"
- Defina uma função para inicializar as variáveis de estado do módulo importado
- Chame a funçao de integração e salve o resultado `u(x, t)` em um arquivo ".csv" utilizando a função `DataFrame(u).to_csv()` com separador `\t` (lembre-se de passar o nome das colunas )
- Salve o arquivo em uma pasta separada
- Implemente a tarefa anterior em uma função

Tarefas no Python (visualização)

- Crie um script separado para o processamento dos dados
- Leia o arquivo ".csv" utilizando a funçao `read_csv()` da biblioteca "pandas" (dica: lembre-se de passar o separador)
- Confira o contúdo do `DataFrame` retornado escrevendo no stdout (verifique se a primeira linha está presente)
- Importe o submódulo `pyplot` da biblioteca `matplotlib`
- Gere um plot utilizando a funçao `pyplot.imshow()`
- Revele o plot utilizando `pyplot.show()`
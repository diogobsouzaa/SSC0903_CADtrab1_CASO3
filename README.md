# SSC0903_CAD_Trab1
Projeto do primeiro trabalho da disciplina de Computação de Alto Desempenho da USP São Carlos (1º semestre de 2026).

## Execução
Para compilar todos os códigos    : make all

Para compilar um programa específico:
- Sequencial: `make studentsseq`
- Paralelo com Sections: `make studentspar_sec`
- Paralelo com Tasks: `make studentspar_task`

Para executar um programa com uma entrada específica (escolher arquivo de entrada):
- `make runseq input=entradas/input.txt`
- `make runpar_sec input=entradas/input.txt`
- `make runpar_task input=entradas/input.txt`

Para rodar o script de execução para todas as entradas automaticamente: `make runall`
(Os tempos serão registrados nos arquivos da pasta "saidas").

Para gerar o gráfico comparativo (requer que as execuções tenham sido feitas): `make analise`

Para limpar os arquivos gerados: `make clean`

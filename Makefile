# Compilation settings
CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -O3 -fopenmp
LDLIBS = -lm

# Executable files
EXE_SEQ = studentsseq
EXE_PAR_SEC = studentspar_sec
EXE_PAR_TASK = studentspar_task

# Source files
SRC = studentsseq.c studentspar_sec.c studentspar_task.c

# Object files
OBJ = $(SRC:.c=.o)

TARGETS = $(SRC:.c=)

.PHONY: all runseq runpar_sec runpar_task runall analise clean

# Rules
all: $(TARGETS)

$(TARGETS): %: %.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDLIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

runseq: $(EXE_SEQ)
	./$(EXE_SEQ) $(input)

runpar_sec: $(EXE_PAR_SEC)
	./$(EXE_PAR_SEC) $(input)

runpar_task: $(EXE_PAR_TASK)
	./$(EXE_PAR_TASK) $(input)

runall: all
	./run_all.sh

analise:
	python3 analise.py

clean:
	rm -f $(TARGETS) *.o saidas/*.txt *.png

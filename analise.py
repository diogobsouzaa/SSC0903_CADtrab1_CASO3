import seaborn as sns
import matplotlib.pyplot as plt

with open("saidas/temposseq.txt") as seqout:
    seq = [float(x) for x in seqout.read().splitlines()]

with open("saidas/tempospar_sec.txt") as par_sec_out:
    par_sec = [float(x) for x in par_sec_out.read().splitlines()]

with open("saidas/tempospar_task.txt") as par_task_out:
    par_task = [float(x) for x in par_task_out.read().splitlines()]

num_execucoes = len(seq)
x_axis = range(1, num_execucoes + 1)

sns.set_style("whitegrid")
sns.set_palette("Set2")
sns.lineplot(x=x_axis, y=seq, label="Sequencial")
sns.lineplot(x=x_axis, y=par_sec, label="Paralelo (sections)")
sns.lineplot(x=x_axis, y=par_task, label="Paralelo (tasks)")
plt.title("Comparativo de Tempos de Execução")
plt.xlabel("Execução (Entradas diferentes)")
plt.ylabel("Tempo (s)")
plt.legend()
sns.despine()
plt.savefig("tempos_comparativo.png")
#plt.show()

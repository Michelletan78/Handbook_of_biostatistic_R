a <- read.table("Keshan_disease.txt",header=T)
summary(a)
#�򶨷��ʶ���λ��a��
attach(a)
sd(patient)
sd(healthy)
var(patient)
var(healthy)
b <-max(patient)-min(patient)
c <-max(healthy)-min(healthy)
boxplot(a)
#t-test�������֮ǰ���з���ͬ���Է���(var.test)������t-test��var.equal����
var.test(patient,healthy)$p.value
t.test(patient,healthy,var.equal = T)$p.value
#�ǲ�������wilcox ���״̬T/F������Ը�ͨ��
wilcox.test(patient,healthy,paired = T)
wilcox.test(patient,healthy,paired = F)

detach(a)

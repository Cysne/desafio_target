# 4) Descubra a lógica e complete o próximo elemento:

# a) 1, 3, 5, 7, ___
# Resposta: Numeros impares consecutivos então o valor final é 9
# b) 2, 4, 8, 16, 32, 64, ____
# Resposta: Multiplicação por 2 então o valor final é 128
# c) 0, 1, 4, 9, 16, 25, 36, ____
# Respota: É uma sequencia de quadrados então o valor final é 49
# d) 4, 16, 36, 64, ____
# Resposta: Sequencia de quadrados de numeros pares então o valor final é 100
# e) 1, 1, 2, 3, 5, 8, ____
# Resposta: Sequencia de fibonacci então o valor final é 13
# f) 2,10, 12, 16, 17, 18, 19, ____
# Resposta: segue uma logica de soma de 8, 2, 4, 1, 1, 1, então o valor final é 27

# A)
def proximo_elemento_a(sequencia)
  ultimo_elemento = sequencia.last
  proximo_elemento = ultimo_elemento + 2
  sequencia << proximo_elemento
end

#B)
def proximo_elemento_b(sequencia)
  ultimo_elemento = sequencia.last
  proximo_elemento = ultimo_elemento * 2
  sequencia << proximo_elemento
end

#C)
def proximo_elemento_c(sequencia)
  indice = sequencia.size
  proximo_elemento = indice ** 2
  sequencia << proximo_elemento
end

#D)
def proximo_elemento_d(sequencia)
  indice = (sequencia.size + 1) * 2
  proximo_elemento = indice ** 2
  sequencia << proximo_elemento
end

#E)
def proximo_elemento_e(sequencia)
  penultimo_elemento = sequencia[-2]
  ultimo_elemento = sequencia.last
  proximo_elemento = penultimo_elemento + ultimo_elemento
  sequencia << proximo_elemento
end

#F)
def proximo_elemento_f(sequencia)
  if sequencia.size == 1
    proximo_elemento = sequencia.last + 8
  elsif sequencia.size == 2
    proximo_elemento = sequencia.last + 2
  elsif sequencia.size == 3
    proximo_elemento = sequencia.last + 4
  else
    proximo_elemento = sequencia.last + 1
  end
  sequencia << proximo_elemento
end



def sequencias
  sequencia_a = [1, 3, 5, 7]
  sequencia_b = [2, 4, 8, 16, 32, 64]
  sequencia_c = [0, 1, 4, 9, 16, 25, 36]
  sequencia_d = [4, 16, 36, 64]
  sequencia_e = [1, 1, 2, 3, 5, 8]
  sequencia_f = [2, 10, 12, 16, 17, 18, 19]

  proximo_elemento_a(sequencia_a)
  proximo_elemento_b(sequencia_b)
  proximo_elemento_c(sequencia_c)
  proximo_elemento_d(sequencia_d)
  proximo_elemento_e(sequencia_e)
  proximo_elemento_f(sequencia_f)

  puts "a) #{sequencia_a.join(', ')}"
  puts "b) #{sequencia_b.join(', ')}"
  puts "c) #{sequencia_c.join(', ')}"
  puts "d) #{sequencia_d.join(', ')}"
  puts "e) #{sequencia_e.join(', ')}"
  puts "f) #{sequencia_f.join(', ')}"
end

sequencias

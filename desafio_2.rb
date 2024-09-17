# 2) Escreva um programa que verifique, em uma string, a existência da letra ‘a’,
#  seja maiúscula ou minúscula, além de informar a quantidade de vezes em que ela ocorre.
#
# IMPORTANTE: Essa string pode ser informada através de qualquer entrada de sua preferência
# ou pode ser previamente definida no código;

def verificar_letra_a(string)
  string.count('a')
end

def mensagem(string)
  quantidade = verificar_letra_a(string)
  if quantidade > 0
    puts "A letra 'a' aparece #{quantidade} vezes na string."
  else
    puts "A letra 'a' não aparece na string."
  end
end

def main
  puts 'Informe uma string para verificar a quantidade de vezes que a letra "a" aparece:'
  string = gets.chomp
  mensagem(string)
end

main

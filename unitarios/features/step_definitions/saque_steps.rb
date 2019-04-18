require_relative '../../app/bank'

Dado("que eu tenho R$ {float} em minha conta corrente") do |saldo|
  @conta = ContaCorrente.new(saldo)
end
  
Quando("faço um saque de R$ {float}") do |valor_saque|
  @conta.saca(valor_saque)
end
  
Então("meu saldo final deve ser R$ {float}") do |saldo_final|
  expect(@conta.saldo).to eql saldo_final
end
  
Então("vejo a mensagem {string}") do |mensagem|
  expect(@conta.mensagem).to eql mensagem
end
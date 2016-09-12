class Conta

  attr_accessor :nome
  attr_accessor :pin
  attr_accessor :saldo
  attr_accessor :senha

  def initialize(nome, saldo, pin, senha)
    @nome = nome
    @saldo = saldo
    @pin = pin
    @senha = senha
  end
end

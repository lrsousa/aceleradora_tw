class Conta

  attr_accessor :nome
  attr_accessor :pin
  attr_accessor :saldo

  def initialize(nome, saldo, pin)
    @nome = nome
    @saldo = saldo
    @pin = pin
  end
end

require_relative 'conta'

class Banco

  attr_accessor :contas

  def initialize
    self.contas = []
  end

  def criar_conta(nome, saldo, pin)
    self.contas << Conta.new(nome, saldo, pin)
  end

  def imprimir_saldos
    self.contas.each do |conta|
      puts "A conta #{conta.pin} de #{conta.nome} tem saldo: #{conta.saldo}"
    end
  end

  def buscar_conta(pin)
    self.contas.find { |c| c.pin == pin }
  end

  def deposito(destino, valor)
    conta_destino = buscar_conta(destino)
    if valor > 0
      conta_destino.saldo += valor
    else
      puts "Valor invalido"
    end
  end

  def saque(origem, valor)
    conta_origem = buscar_conta(origem)

    if valor > 0 and conta_origem.saldo >= valor
      conta_origem.saldo -= valor
    else
      puts "Valor invalido"
    end
  end

  def transferencia(origem, destino, valor)
    saque(origem, valor)
    deposito(destino, valor)
  end
end

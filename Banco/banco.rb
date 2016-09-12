require_relative 'conta'
require_relative 'pessoa_fisica'
require_relative 'pessoa_juridica'

class Banco

  attr_accessor :contas

  def initialize
    self.contas = []
  end

  def criar_conta(nome, saldo, pin, senha, tipoConta)
    if tipoConta.eql? "fisica"
      self.contas << PessoaFisica.new(nome, saldo, pin, senha)
    elsif tipoConta.eql? "juridica"
      self.contas << PessoaJuridica.new(nome, saldo, pin, senha)
    end
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
    contaDestino = buscar_conta(destino)
    if valor > 0
      contaDestino.saldo += valor
    else
      puts "Valor invalido"
    end
  end

  def saque(origem, valor, senha)
    contaOrigem = buscar_conta(origem)

    unless senha_valida?(contaOrigem, senha)
      p "Senha invalida"
      return false
    end

    valor += valor * contaOrigem.taxa
    if valor > 0 and contaOrigem.saldo >= valor
      contaOrigem.saldo -= valor
    else
      puts "Valor invalido"
    end
  end

  def transferencia(origem, destino, valor, senha)
    saque(origem, valor, senha)
    deposito(destino, valor)
  end

  private
  def senha_valida?(conta, senha)
    conta.senha.eql? senha
  end
end


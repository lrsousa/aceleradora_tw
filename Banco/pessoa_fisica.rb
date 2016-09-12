require_relative 'conta'

class PessoaFisica < Conta

	attr_accessor :taxa

	def initialize(nome, saldo, pin, senha)
		super(nome, saldo, pin, senha)
		@taxa = 0.08
	end

end
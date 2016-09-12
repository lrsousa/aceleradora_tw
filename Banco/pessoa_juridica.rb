require_relative 'conta'

class PessoaJuridica < Conta

	attr_accessor :taxa

	def initialize(nome, saldo, pin, senha)
		super(nome, saldo, pin, senha)
		@taxa = 0.05
	end

end
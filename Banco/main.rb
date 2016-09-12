require_relative 'banco'
require_relative 'conta'

banco = Banco.new
banco.criar_conta("joao", 1000, 1111)
banco.criar_conta("jose", 500, 2222)
banco.criar_conta("kenai", 700, 3333)

banco.transferencia(2222, 1111, 200)

c = banco.buscar_conta(2222)
puts c.nome

banco.imprimir_saldos

#puts "Numero de contas: #{banco.contas.length}"

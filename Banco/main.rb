require_relative 'banco'
require_relative 'conta'

banco = Banco.new
banco.criar_conta("joao", 1000, 1111, "1234", "fisica")
banco.criar_conta("jose", 500, 2222, "1234", "juridica")
banco.criar_conta("kenai", 700, 3333, "1234", "fisica")

banco.imprimir_saldos

puts "====================================="
#banco.saque(1111, 100, "11")
banco.transferencia(2222, 1111, 200, "1234")

banco.imprimir_saldos

#puts "Numero de contas: #{banco.contas.length}"

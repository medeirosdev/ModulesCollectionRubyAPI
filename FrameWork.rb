#============================================================
# CÓDIGO NECESSÁRIO PARA IMPORTAR O MÓDULO DE CRIPTOGRAFIA
#============================================================
require_relative 'Modules/cryptography_module'
require_relative 'Modules/validation_module'
#========================================================================================
# CÓDIGO NECESSÁRIO PARA INCLUIR O MÓDULO E SEUS MÉTODOS PARA SEREM USADOS -> ESSENCIAL!
#========================================================================================
include CryptographyModule
include ValidationModule

idChavePadrao = 33

stringAleatoria = CryptographyModule.GetSaltCodeStringRandom(tamanho: idChavePadrao)

salt = CryptographyModule.GetSaltCodeSecureRandom(tamanho: idChavePadrao)

passWordHashed = CryptographyModule.HashThisWithSaltIn512(password: "Gui123" , salt:salt)

puts stringAleatoria
puts salt

cpf = '49264152803'

puts ValidationModule.CPF(cpf)

puts passWordHashed
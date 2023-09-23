# frozen_string_literal: true
require 'digest'
require 'securerandom'

module CryptographyModule

  def GetSaltCodeStringRandom(tamanho: Integer)
    caracteres = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
    string_aleatoria = (0...tamanho).map { caracteres[rand(caracteres.length)] }.join
    return string_aleatoria
  end

  def GetSaltCodeSecureRandom(tamanho: Integer)
    return SecureRandom.hex(tamanho)
  end

  def HashThisWithSaltIn512(password:String , salt:String)
    passWithSalt = password + salt
    sha512Pass = Digest::SHA512.hexdigest(passWithSalt)
    return sha512Pass
  end

  def HashThisInt512(data:String)
    return Digest::SHA512.hexdigest(data)
  end

  def CompareThisPasswords512(password1:String, salt:String, password2:String)
    passWithSalt = HashThisIn512(password: password1, salt: salt)
    if passWithSalt.eql?password2 == true
      true
    end
    false
  end

  def CompareThisData512(data1:string, data2:string)
    hashedData = HashThisInt512(data:data1)
    if hashedData.eql?data2 == true
      true
    end
    false
  end



end

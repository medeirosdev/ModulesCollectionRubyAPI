#============================================================
# CÓDIGO NECESSÁRIO PARA IMPORTAR O MÓDULO DE CRIPTOGRAFIA
#============================================================
require_relative '../Modules/validation_module'
#========================================================================================
# CÓDIGO NECESSÁRIO PARA INCLUIR O MÓDULO E SEUS MÉTODOS PARA SEREM USADOS -> ESSENCIAL!
#========================================================================================
include ValidationModule

describe ValidationModule do

  # Exemplo de teste para um método da sua biblioteca Validation
  describe '#CPF' do
    it 'Deve retornar TRUE para o CPF 175.389.210-44' do
      # Crie uma instância da sua classe ou chame o método da sua biblioteca aqui
      cpf = '175.389.210-44'
      result = ValidationModule.CPF(cpf: cpf)
      # Defina as expectativas (expectations)
      expect(result).to eq(true)
    end
  end

  describe '#CPF' do
    it 'Deve retornar FALSE para o CPF 722.577.287-02' do
      # Crie uma instância da sua classe ou chame o método da sua biblioteca aqui
      cpf = '722.577.287-02'
      result = ValidationModule.CPF(cpf:cpf)
      # Defina as expectativas (expectations)
      expect(result).to eq(false)
    end
  end

  describe '#Password' do
    it 'Deve retornar FALSE para a senha 123 do' do
      # Crie uma instância da sua classe ou chame o método da sua biblioteca aqui
      password = '123'
      result = ValidationModule.Password(password:password)
      # Defina as expectativas (expectations)
      expect(result).to eq(false)
    end
  end

  describe '#Password' do
    it 'Deve retornar FALSE para a senha 123ABC do' do
      # Crie uma instância da sua classe ou chame o método da sua biblioteca aqui
      password = '123ABC'
      result = ValidationModule.Password(password:password)
      # Defina as expectativas (expectations)
      expect(result).to eq(false)
    end
  end


  describe '#Password' do
    it 'Deve retornar FALSE para a senha 123ABC@ do' do
      # Crie uma instância da sua classe ou chame o método da sua biblioteca aqui
      password = '123ABC@'
      result = ValidationModule.Password(password:password)
      # Defina as expectativas (expectations)
      expect(result).to eq(false)
    end
  end

  describe '#Password' do
    it 'Deve retornar TRUE para a senha senhaSENHA123@#$ do' do
      # Crie uma instância da sua classe ou chame o método da sua biblioteca aqui
      password = 'senhaSENHA123@#$'
      result = ValidationModule.Password(password:password)
      # Defina as expectativas (expectations)
      expect(result).to eq(true)
    end
  end

  describe '#Email' do
    it 'Deve retornar FALSE para o email leandro123 do' do
      # Crie uma instância da sua classe ou chame o método da sua biblioteca aqui
      emailTest = 'leandro123'
      result = ValidationModule.Email(email: emailTest)
      # Defina as expectativas (expectations)
      expect(result).to eq(false)
    end
  end

  describe '#Email' do
    it 'Deve retornar TRUE para o email leandro123@gmail.com do' do
      # Crie uma instância da sua classe ou chame o método da sua biblioteca aqui
      emailTest = 'leandro123@gmail.com'
      result = ValidationModule.Email(email: emailTest)
      # Defina as expectativas (expectations)
      expect(result).to eq(true)
    end
  end







end





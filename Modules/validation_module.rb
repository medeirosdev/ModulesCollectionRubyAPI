# frozen_string_literal: true

module ValidationModule

  def CPF(cpf: String)
    # Remove caracteres não numéricos do CPF
    cpf = cpf.gsub(/[^0-9]/, '')

    # Verifica se o CPF possui 11 dígitos
    return false unless cpf.length == 11

    # Calcula o primeiro dígito verificador
    soma = 0
    9.times do |i|
      soma += cpf[i].to_i * (10 - i)
    end
    resto = soma % 11
    primeiro_digito = (resto < 2) ? 0 : 11 - resto

    # Calcula o segundo dígito verificador
    soma = 0
    10.times do |i|
      soma += cpf[i].to_i * (11 - i)
    end
    resto = soma % 11
    segundo_digito = (resto < 2) ? 0 : 11 - resto

    # Verifica se os dígitos verificadores são iguais aos dígitos originais
    cpf[-2, 2] == "#{primeiro_digito}#{segundo_digito}"
  end

  def Password(password: String)
    # Verifica se a senha possui pelo menos 8 caracteres
    return false unless password.length >= 8

    # Verifica se a senha contém pelo menos um caractere especial
    return false unless password =~ /[!@#$%^&*()_+{}\[\]:;<>,.?~\\-]/

    # Verifica se a senha contém pelo menos um número
    return false unless password =~ /\d/

    # Verifica se a senha contém pelo menos uma letra maiúscula
    return false unless password =~ /[A-Z]/

    # Verifica se a senha contém pelo menos uma letra minúscula
    return false unless password =~ /[a-z]/

    # Se todas as verificações passaram, a senha é válida
    true
  end

  def Email(email: string)
    # Defina uma expressão regular para verificar a estrutura básica do email.
    # Esta expressão regular não cobre todas as regras de validação de email,
    # mas pode ajudar a identificar erros simples de digitação.
    regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    # Use a expressão regular para verificar o email.
    if email =~ regex
      return true
    else
      return false
    end
  end


end

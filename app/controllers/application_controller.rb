class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [
        :cpf,
        :tipo_doc,
        :profissao,
        :num_doc,
        :expedidor,
        :nome_completo,
        :telefone,
        :nascimento,
        :sexo,
        :cep,
        :complemento,
        :email,
        :encrypted_password
      ]
    )
  end
end

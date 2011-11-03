class Recurso
  include ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  
  attr_accessor :nome, :proprietario_condutor, :placa, :cor, :marca_modelo, :ano, :chassi_renavam, :numero_auto, :data_auto, :horario_auto, :artigo_auto, :rodovia_auto, :km_auto, :municipio_auto, :residente, :bairro, :cidade, :cep, :fone, :uf, :identidade, :cpf, :cnh, :uf_cnh, :razoes, :empresa, :cancelamento_restituicao, :banco, :agencia, :conta_corrente
                
  validates_presence_of :nome, :proprietario_condutor, :placa, :cor, :marca_modelo, :ano, :chassi_renavam, :numero_auto, :data_auto, :horario_auto, :artigo_auto, :rodovia_auto, :km_auto, :municipio_auto, :residente, :bairro, :cidade, :cep, :fone, :uf, :identidade, :cpf, :cnh, :uf_cnh, :razoes, :empresa, :cancelamento_restituicao, :banco, :agencia, :conta_corrente
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
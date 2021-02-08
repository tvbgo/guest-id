class AddFieldsToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :nome, :string
    add_column :hotels, :endereco, :string
    add_column :hotels, :telefone, :string
    add_column :hotels, :responsavel, :string
    add_column :hotels, :cnpj, :string
    add_column :hotels, :validado, :boolean
  end
end

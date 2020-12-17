class CreateFnrhs < ActiveRecord::Migration[6.0]
  def change
    create_table :fnrhs do |t|
      t.references :user, null: false, foreign_key: true
      t.date :check_in
      t.date :check_out
      t.string :meio_de_transporte
      t.string :procedencia
      t.string :motivo
      t.string :prox_dest

      t.timestamps
    end
  end
end

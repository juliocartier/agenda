class CreateTelefones < ActiveRecord::Migration[5.1]
  def change
    create_table :telefones do |t|
      t.string :nome
      t.string :numero

      t.timestamps
    end
  end
end

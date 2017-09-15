class CreateContatosses < ActiveRecord::Migration[5.1]
  def change
    create_table :contatosses do |t|
      t.string :nome
      t.string :endereco
      t.string :email
      t.date :dataNascimento

      t.timestamps
    end
  end
end

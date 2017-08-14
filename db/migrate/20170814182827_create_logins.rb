class CreateLogins < ActiveRecord::Migration[5.1]
  def change
    create_table :logins do |t|
      t.string :login
      t.string :senha
      t.references :user, foreign_key: true
      t.references :server, foreign_key: true

      t.timestamps
    end
  end
end

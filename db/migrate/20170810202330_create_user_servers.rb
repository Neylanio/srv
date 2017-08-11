class CreateUserServers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_servers do |t|
      t.references :user, foreign_key: true
      t.references :server, foreign_key: true

      t.timestamps
    end
  end
end

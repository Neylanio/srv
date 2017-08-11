class AddNomeToServers < ActiveRecord::Migration[5.1]
  def change
    add_column :servers, :nome, :string
  end
end

class AddPasswordDigestToServers < ActiveRecord::Migration[5.1]
  def change
    add_column :servers, :password_digest, :string
  end
end

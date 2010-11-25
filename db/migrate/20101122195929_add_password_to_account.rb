class AddPasswordToAccount < ActiveRecord::Migration
  def self.up
    add_column :accounts, :password, :string
  end

  def self.down
    remove_column :accounts, :password
  end
end

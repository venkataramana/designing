class AddColToDesigns < ActiveRecord::Migration
  def self.up
          add_column :designs, :post, :text
          add_column :designs, :email, :string
  end

  def self.down
          remove_column :designs, :post
          remove_column :designs, :email
  end
end


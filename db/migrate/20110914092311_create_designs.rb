class CreateDesigns < ActiveRecord::Migration
  def self.up
    create_table :designs do |t|
      t.string :design_name

      t.timestamps
    end
  end

  def self.down
    drop_table :designs
  end
end

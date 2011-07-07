class CreateCategoryMasters < ActiveRecord::Migration
  def self.up
    create_table :category_masters do |t|
      t.string :name
      t.text :description
      t.string :isActive

      t.timestamps
    end
  end

  def self.down
    drop_table :category_masters
  end
end

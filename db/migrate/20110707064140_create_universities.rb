class CreateUniversities < ActiveRecord::Migration
  def self.up
    create_table :universities do |t|
      t.string :name
      t.string :weburl
      t.string :email
      t.string :telephone
      t.integer :yearofest
      t.string :IPaddress
      t.timestamp :createDate
      t.string :isActive

      t.timestamps
    end
  end

  def self.down
    drop_table :universities
  end
end

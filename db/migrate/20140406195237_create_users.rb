class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password 
      t.string :firstname 
      t.string :lastname 
      t.string :interests 
      t.string :aboutyourself 
      t.string :quotes

      t.timestamps
    end
  end
end

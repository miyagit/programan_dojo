class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email,             null: false, default: ""
      t.string           :name,    null: false, default: ""
      t.references       :job,     null: false, foreign_key: true
      t.string           :sex,     null: false
      t.unsigned_integer :age,     null: false
      t.unsigned_integer :tall,    null: false
      t.unsigned_integer :weight,  null: false
      t.unsigned_integer :income,  null: false
      t.timestamps
      t.timestamps
    end
    add_index :users, :email,                unique: true
  end
end


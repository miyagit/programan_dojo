class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string           :name,    null: false, default: ""
      t.references       :job,     null: false, foreign_key: true
      t.integer          :sex,     null: false
      t.unsigned_integer :age,     null: false
      t.unsigned_float   :tall,    null: false
      t.unsigned_float   :weight,  null: false
      t.timestamps
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string           :name,    null: false, default: ""
      t.references       :job,     null: false, foreign_key: true
      t.integer          :sex
      t.unsigned_integer :age
      t.unsigned_float   :tall
      t.unsigned_float   :weight
      t.timestamps
      t.timestamps
    end
  end
end

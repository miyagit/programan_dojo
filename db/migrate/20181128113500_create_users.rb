class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string     :name,       null: false, default: ""
      t.integer    :age,        null: false
      t.integer    :blood_type, null: false, default: 0
      t.boolean    :is_married, null: false, default: false
      t.timestamps
      t.timestamps
    end
  end
end

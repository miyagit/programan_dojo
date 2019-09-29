class CreateCircleUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :circle_users do |t|
      t.references       :circle,     null: false, foreign_key: true
      t.references       :user,       null: false, foreign_key: true
      t.timestamps
    end
    add_index :circle_users, [:user_id, :circle_id], unique: true
  end
end

class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.string :desc
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

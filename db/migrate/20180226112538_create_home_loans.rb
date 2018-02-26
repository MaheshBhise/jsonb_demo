class CreateHomeLoans < ActiveRecord::Migration
  def change
    create_table :home_loans do |t|
      t.jsonb :data

      t.timestamps null: false
    end
  end
end

class Person < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :nationality
      t.string :contact
      t.string :height
      t.string :gender
      t.text :description
      t.datetime :missing_date
      t.string :missing_location
      t.text :updates

      t.timestamps null: false
    end
  end
end

class CreateHomePages < ActiveRecord::Migration
  def change
    create_table :home_pages do |t|
      t.string :greeting_string
      t.integer :visits

      t.timestamps null: false
    end
  end
end

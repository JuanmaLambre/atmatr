class CreateAtms < ActiveRecord::Migration[5.2]
  def change
    create_table :atms do |t|
      t.float :long
      t.float :lat
      t.string :bank
      t.string :network
      t.string :location
      t.string :city
      t.integer :terminals
      t.boolean :blindness_assistance
      t.boolean :dolars
      t.string :street
      t.integer :street_number
      t.string :second_street
      t.string :neighborhood
      t.string :commune
      t.integer :code
      t.string :zipcode

      t.timestamps
    end
  end
end

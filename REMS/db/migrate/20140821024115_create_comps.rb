class CreateComps < ActiveRecord::Migration
  def change
    create_table :comps do |t|
      t.string :address
      t.string :street
      t.string :cross_street_1
      t.string :cross_street_2
      t.integer :frontage
      t.integer :ground
      t.integer :basement
      t.integer :mezz
      t.integer :second
      t.integer :third
      t.integer :annual_rent
      t.string :agent_landlord_company
      t.string :contact
      t.string :telephone
      t.string :email
      t.string :term
      t.string :history
      t.date :date
      t.date :updated_date
      t.string :comments

      t.timestamps
    end
  end
end

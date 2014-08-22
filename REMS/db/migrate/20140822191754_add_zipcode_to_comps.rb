class AddZipcodeToComps < ActiveRecord::Migration
  def change
    add_column :comps, :zipcode, :integer
  end
end

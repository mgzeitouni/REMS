class AddStatusToComps < ActiveRecord::Migration
  def change
    add_column :comps, :status, :boolean
  end
end

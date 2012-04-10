class AddApprovedToHolidayrequests < ActiveRecord::Migration
  def self.up
    add_column :holidayrequests, :approved, :boolean
  end

  def self.down
    remove_column :holidayrequests, :approved
  end
end

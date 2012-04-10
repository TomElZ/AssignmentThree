class RemoveFullnameFromHolidayrequests < ActiveRecord::Migration
  def self.up
    remove_column :holidayrequests, :fullname
  end

  def self.down
    add_column :holidayrequests, :fullname, :string
  end
end

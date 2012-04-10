class RemoveUserIdFromHolidayrequests < ActiveRecord::Migration
  def self.up
    remove_column :holidayrequests, :userid
  end

  def self.down
    add_column :holidayrequests, :userid, :string
  end
end

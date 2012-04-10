class AddUserIdToHolidayrequests < ActiveRecord::Migration
  def self.up
    add_column :holidayrequests, :user_id, :integer
  end

  def self.down
    remove_column :holidayrequests, :user_id
  end
end

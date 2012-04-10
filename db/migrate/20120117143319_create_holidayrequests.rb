class CreateHolidayrequests < ActiveRecord::Migration
  def self.up
    create_table :holidayrequests do |t|
      t.string :userid
      t.string :fullname
      t.string :noofdays
      t.date :datefrom
      t.date :dateto

      t.timestamps
    end
  end

  def self.down
    drop_table :holidayrequests
  end
end

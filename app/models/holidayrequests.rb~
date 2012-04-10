class Holidayrequests < ActiveRecord::Base

  	belongs_to :user

  	validates_presence_of :datefrom
  	validates_presence_of :dateto

  	has_attached_file 	:photo, :styles => { :small => "150x150>" }, 
  						:url => "/assets/holidayrequests/:id/:style/:basename.:extension", 
  						:path => ":rails_root/public/assets/holidayrequests/:id/:style/:basename.:extension"

	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end

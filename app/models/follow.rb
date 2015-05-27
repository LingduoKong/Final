class Follow < ActiveRecord::Base

	belongs_to :fans, class_name: "User"
  belongs_to :stars, class_name: "User"
	
end

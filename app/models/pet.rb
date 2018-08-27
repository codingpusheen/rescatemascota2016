class Pet < ActiveRecord::Base
	scope :status, -> (status) { where status: status }
end

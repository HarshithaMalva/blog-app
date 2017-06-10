class Permission < ActiveRecord::Base
	belongs_to :User
	belongs_to :role
end

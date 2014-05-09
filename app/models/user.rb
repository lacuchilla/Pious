class User < ActiveRecord::Base
	validates :storename, :address, presence: true
end

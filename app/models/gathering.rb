class Gathering < ActiveRecord::Base

	has_and_belongs_to_many :users
	has_many :commitment_types

end

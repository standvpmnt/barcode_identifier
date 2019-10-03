class Cobasreagent < ApplicationRecord
	validates :test_code, presence: true
	validates :unique_identifier, uniqueness: true

end
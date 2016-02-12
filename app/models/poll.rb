class Poll < ActiveRecord::Base
	has_many :vote_options
	validates_presence_of :topic, :category
end

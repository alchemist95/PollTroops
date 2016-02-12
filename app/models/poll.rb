class Poll < ActiveRecord::Base
	belongs_to :person
	has_many :vote_options
	validates_presence_of :topic, :category
accepts_nested_attributes_for :vote_options, :reject_if => :all_blank, :allow_destroy => true
end

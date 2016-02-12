class Person < ActiveRecord::Base
	has_many :polls
has_many :votes, dependent: :destroy
has_many :vote_options, through: :votes

class << self

	def from_omniauth(auth)
		uid=auth.uid
		info=auth.info.symbolize_keys!
		person=Person.find_or_initialize_by(uid: uid)
		person.name=info.name
		person.image_url=info.image
		person.save!
		person

	end
end

def voted_for?(poll)
  vote_options.any? {|v| v.poll == poll }
end




end

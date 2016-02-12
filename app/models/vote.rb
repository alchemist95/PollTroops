class Vote < ActiveRecord::Base
  belongs_to :person
  belongs_to :vote_option
end

class Tweet < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :user
  validates_presence_of :text
  validates_length_of :text, :maximum => 140, :allow_blank => false
end

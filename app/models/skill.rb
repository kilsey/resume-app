class Skill < ActiveRecord::Base
  belongs_to :user
  has_many :keywords
end

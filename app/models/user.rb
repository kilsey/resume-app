class User < ActiveRecord::Base
  has_many :works
  has_many :skills
end

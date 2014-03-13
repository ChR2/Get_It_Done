class List < ActiveRecord::Base
  has_many :users, through: :user_lists
  has_many :tasks
  has_many :user_lists  

end

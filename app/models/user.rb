class User < ActiveRecord::Base
  has_many :tasks
  has_many :lists, through: :user_lists
  has_many :user_lists 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

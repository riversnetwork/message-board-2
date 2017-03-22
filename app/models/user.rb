class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_attachment  :avatar, accept: [:jpg, :png, :gif]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates_presence_of :first_name, :last_name, :avatar
  
end
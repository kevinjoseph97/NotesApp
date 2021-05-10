class Student < ApplicationRecord


  has_many :classrooms
  has_many :notes, through: :classrooms 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_many :projects, dependent: :destroy
 has_many :employees, class_name: "Apply", foreign_key: "employer_id"
 has_many :interested_projects, class_name: "Apply", foreign_key: "interested_id"
end

class Trainer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :applications
    has_many :gyms
    has_many :trainees, through: :applications
    validates :email, presence: true, uniqueness: true
end

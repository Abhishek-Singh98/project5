class Trainee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :applications
    has_many :reviews
    has_one :trainer, through: :application
    validates :email, presence: true, Uniqueness: true
end

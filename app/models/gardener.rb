class Gardener < ApplicationRecord

  has_many :tools, dependent: :destroy
  has_many :requests, dependent: :destroy

   validates :username, length: { maximum: 16 }
   validates :username, uniqueness: true
   validates :email, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end

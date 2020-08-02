class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :messages
 
  validates :name, presence: true, uniqueness: true 
  validates :profile, length: { maximum: 250 }
  mount_uploader :image, ImageUploader

end

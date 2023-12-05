class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many  :songs, class_name: "Song", foreign_key: "owner_id", dependent: :nullify
  has_many :artists, through: :songs, source: :artist
  validates :username, presence: true
  validates :username, uniqueness: true
end

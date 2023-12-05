# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  song_id    :integer
#
class Artist < ApplicationRecord
  has_many  :songs, class_name: "Song", foreign_key: "artist_id", dependent: :destroy
  has_many :owners, through: :songs, source: :owner
  validates :song_id, presence: true
  validates :song_id, uniqueness: { message: "already liked" }
end

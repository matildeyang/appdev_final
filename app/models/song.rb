# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#  owner_id   :integer
#
class Song < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id", counter_cache: true
  belongs_to :artist, required: true, class_name: "Artist", foreign_key: "artist_id", counter_cache: true
  validates :title, presence: true
  validates :owner_id, presence: true
end

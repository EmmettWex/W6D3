# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  image_url  :string           not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :bigint           not null
#
# Indexes
#
#  index_artworks_on_artist_id  (artist_id)
#  index_artworks_on_title      (title)
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => users.id)
#
class Artwork < ApplicationRecord
    validates :title, presence: true, uniqueness: { scope: :artist_id, message: "be more creative" }
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true

    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User

    has_many :artwork_shares,
        foreign_key: :artwork_id,
        inverse_of: :artwork,
        dependent: :destroy

end

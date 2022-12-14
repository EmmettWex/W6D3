class CreateArtwork < ApplicationRecord
    validates :title, presence: true, uniqueness: { scope: :artist_id, message: "be more creative" }
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true

end

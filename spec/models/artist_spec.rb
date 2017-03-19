require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "association with songs" do
    let(:artist) { create :artist }
    let(:song1) { create :song, artist: artist }
    let(:song2) { create :song, artist: artist }

    it "has many songs" do
      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end
  end

  describe "validations" do
    it "is invalid without artist name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without a name longer than 50 characters" do
      artist = Artist.new(name: "a" *51)
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without an image" do
      artist = Artist.new(image: "")
      artist.valid?
      expect(artist.errors).to have_key(:image)
    end
  end
end

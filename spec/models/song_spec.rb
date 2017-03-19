require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "association with songs" do
    let(:song) { create :song, artist: artist }
    let(:artist) { create :artist }

    it "belongs to" do
      expect(song.artist).to eq(artist)
    end
  end

  describe "validations" do
    it "is invalid without a name" do
      song = Song.new(name: "")
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid with a name longer than 500 characters" do
      song = Song.new(name: "a"*501)
      song.valid?
      expect(song.errors).to have_key(:name)
    end
  end
end

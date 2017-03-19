require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "association with songs" do
    let(:song) { create :song, artist: artist }
    let(:artist) { create :artist }

    it "belongs to" do
      expect(song.artist).to eq(artist)
    end
  end
end

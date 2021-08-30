class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    a = Artist.find_or_create_by(name: name)
    self.artist = a
  end
end

#1. Write code for #artist_name and #artist_name= so an Artist can be retreived from and associated with a Song instance
#this retreives a song and associates it with a song instance
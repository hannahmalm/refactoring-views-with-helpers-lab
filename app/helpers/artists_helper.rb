module ArtistsHelper
    def display_artist(song)
        if song.artist && song.artist.name != ""
            link_to song.artist.name, artist_path(song.artist)
        else
            link_to "Add Artist", edit_song_path(song)
        end
    end
end

#1. Write code for #artist_name and #artist_name= so an Artist can be retreived from and associated with a Song instance
#2. Write a helper method(display_artist) in app/helpers file
#If an artist is associted with song, return artist show page
#If an artist is not associated with the song, return a link to songs edit page - link text Add Artist 

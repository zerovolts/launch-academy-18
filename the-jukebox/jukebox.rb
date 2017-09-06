class Jukebox
  @@available_songs = [
    "Hello - Lionel Ritchie",
    "Kokomo - The Beach Boys",
    "Girl You Know It’s True - Milli Vanilli",
    "Agadoo - Black Lace",
    "Down Under - Men at Work",
    "Nothing's Gonna Stop Us Now - Starship",
    "Get Outta My Dreams, Get Into My Car - Billy Ocean",
    "I Just Called To Say I Love You - Stevie Wonder",
    "Hangin' Tough - New Kids on the Block",
    "We Built This City - Starship",
    "Wake Me Up Before You Go Go - Wham!",
    "We Didn't Start The Fire - Billy Joel",
    "I Wanna Dance With Somebody - Whitney Houston",
    "U Can't Touch This - MC Hammer"
  ]

  def initialize(requested_songs)
    @playlist = []
    requested_songs.map { |requested_song|
      if @@available_songs.include? requested_song
        @playlist.push requested_song
      end
    }
  end

  def shuffle!
    @playlist.shuffle!
  end

  def play!
    @playlist.shift
  end

  def add_track(song)
    if @@available_songs.include? song
      !!@playlist.push(song)
    else
      false
    end
  end
end

require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(song_name="Default Song Name", a_name="Default Artist Name")
    @name = song_name
    @artist_name = a_name
    puts "New Song Created! Song Name: #{name}"
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all.push(song)
    song
  end

  def self.new_by_name(song_name)
    self.new(song_name)
  end

  def self.create_by_name(song_name)
    song = self.new(song_name)
    self.all.push(song)
    song
  end

  def self.find_by_name(song_name)
    self.all.find{ |song| song.name == song_name }
  end

  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name) != nil
      self.find_by_name(song_name)
    else
      self.create_by_name(song_name)
    end
  end

  def self.new_by_name_and_artist(song_name, artist_name)
    self.new(song_name, artist_name)
  end

  def self.alphabetical
    self.all.sort_by { |song| song.name }
  end

  def self.new_from_filename(filename)
    artist_and_song = self.split_filename_string(filename)
    self.new_by_name_and_artist(artist_and_song[1], artist_and_song[0])
  end

  def self.create_from_filename(filename)
    artist_and_song = self.split_filename_string(filename)
    song = self.new_by_name_and_artist(artist_and_song[1], artist_and_song[0])
    self.all.push(song)
    song
  end

  def self.split_filename_string(filename)
    filename.split(".mp3")[0].split(" - ")
  end

  def self.destroy_all
    self.all.clear
  end

end

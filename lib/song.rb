require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(song_name="Default Song Name", a_name="Default Artist Name")
<<<<<<< HEAD
    @name = song_name
    @artist_name = a_name
=======
    name = song_name
    artist_name = a_name
>>>>>>> 1dfa173a5b91a36dee4e5f45ec5d0161a918608d
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
<<<<<<< HEAD
    self.all.find{ |song| song.name == song_name }
  end

  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name) != nil
      self.find_by_name(song_name)
    else
      self.create_by_name(song_name)
    end
=======
    self.all.find{ |name| name == song_name }
  end

  def self.find_or_create_by_name(song_name)
    self.create_by_name if !self.all.include?(song_name)
>>>>>>> 1dfa173a5b91a36dee4e5f45ec5d0161a918608d
  end

  def self.new_by_name_and_artist(song_name, artist_name)
    self.new(song_name, artist_name)
  end

  def self.alphabetical
<<<<<<< HEAD
    self.all.sort_by { |song| song.name }
  end

  def self.new_from_filename(filename)
    artist_and_song = self.split_filename_string(filename)
=======
    self.all.map{ |song, artist| song }.sort
  end

  def self.new_from_filename(filename)
    artist_and_song = filename.split(".mp3").split(" - ")
>>>>>>> 1dfa173a5b91a36dee4e5f45ec5d0161a918608d
    self.new_by_name_and_artist(artist_and_song[1], artist_and_song[0])
  end

  def self.create_from_filename(filename)
<<<<<<< HEAD
    artist_and_song = self.split_filename_string(filename)
=======
    artist_and_song = filename.split(".mp3").split(" - ")
>>>>>>> 1dfa173a5b91a36dee4e5f45ec5d0161a918608d
    song = self.new_by_name_and_artist(artist_and_song[1], artist_and_song[0])
    self.all.push(song)
    song
  end

<<<<<<< HEAD
  def self.split_filename_string(filename)
    filename.split(".mp3")[0].split(" - ")
  end

=======
>>>>>>> 1dfa173a5b91a36dee4e5f45ec5d0161a918608d
  def self.destroy_all
    self.all.clear
  end

<<<<<<< HEAD
=======
  binding.pry
>>>>>>> 1dfa173a5b91a36dee4e5f45ec5d0161a918608d
end

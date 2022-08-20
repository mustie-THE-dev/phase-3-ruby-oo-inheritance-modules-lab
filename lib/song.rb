require 'pry'
require_relative './concerns/memorable'

class Song

  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods

  @@songs = []

  def initialize
    @@songs << self
  end


  def artist=(artist)
    @artist = artist
  end

 
end
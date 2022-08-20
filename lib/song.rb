require 'pry'
require_relative '../lib/concerns/memorable'

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
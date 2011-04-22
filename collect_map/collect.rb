require 'rubygems'
require 'active_support/inflector'

class Artist
  attr_accessor :records

  def initialize(records)
    @records = records
  end

end

class Record
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def pretty_title
    @title.titleize
  end
  
  def to_s
    self.pretty_title
  end

end

artists = [
  ["southside", "shitty techno"],
  ["More techo"],
  ["Blar-X", "Hi", "Mishmash"]
]

new_artists = artists.collect do |record_titles|
  Artist.new(
    record_titles.collect do |title|
      title[0..2]
    end
  )
end

puts new_artists

new_artists.each do |artist|
  puts artist.records
end

require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
require("pry-byebug")

Artist.delete_all()

artist1 = Artist.new(
  'name' => 'Henri Matisse',
  'age' => '84',
  'dob' => '1869',
  'dod' => '1954'
)

artist1.save()

binding.pry
nil

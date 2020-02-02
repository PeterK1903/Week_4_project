require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
require("pry-byebug")

Artist.delete_all()

artist1 = Artist.new(
  'name' => 'Henri Matisse',
  'age' => '84',
  'dob' => '1869',
  'dod' => '1954'
);
artist2 = Artist.new(
  'name' => 'Donatello',
  'age' => '79',
  'dob' => '1386',
  'dod' => '1466'
);
artist3 = Artist.new(
  'name' => 'Joe Hargan',
  'age' => '68',
  'dob' => '1952',
  'dod' => '0000'
);
artist1.save()
artist2.save()
artist3.save()
artist1.age ="77"
artist1.update()


exhibit1 = Exhibit.new(
  'name' => "L'Escargot",
  'category' => 'Painting',
  'period' =>'1900s',
  'displayed_since' => '1962',
  'view' => '',
  'artist_id' => artist1.id
);
exhibit2 = Exhibit.new(
  'name' => 'Niccolò da Uzzano',
  'category' => 'Bust',
  'period' =>'1432',
  'displayed_since' => '1988',
  'view' => '',
  'artist_id' => artist2.id
);
exhibit3 = Exhibit.new(
  'name' => 'The Gaffer',
  'category' => 'Painting',
  'period' =>'2000s',
  'displayed_since' => '2013',
  'view' => '',
  'artist_id' => artist3.id
);
exhibit4 = Exhibit.new(
  'name' => 'The Sorrows of the King',
  'category' => 'Painting',
  'period' =>'1900s',
  'displayed_since' => '2005',
  'view' => '',
  'artist_id' => artist1.id
);

exhibit1.save()
exhibit2.save()
exhibit3.save()
exhibit4.save()

binding.pry
nil

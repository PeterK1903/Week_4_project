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
  'dod' => '2020'
);
artist4 = Artist.new(
  'name' => 'Lawrence Macdonald',
  'age' => '79',
  'dob' => '1799',
  'dod' => '1878'
);
artist1.save()
artist2.save()
artist3.save()
artist4.save()
artist1.age ="77"
artist1.update()


exhibit1 = Exhibit.new(
  'name' => "L'Escargot",
  'category' => 'Painting',
  'period' =>'1900s',
  'displayed_since' => '1962',
  'view' => 'https://uploads8.wikiart.org/images/henri-matisse/the-snail-1953.jpg',
  'artist_id' => artist1.id
);
exhibit2 = Exhibit.new(
  'name' => 'Niccolò da Uzzano',
  'category' => 'Bust',
  'period' =>'1400s',
  'displayed_since' => '1988',
  'view' => 'https://upload.wikimedia.org/wikipedia/commons/1/19/Niccolo_da_Uzzano_by_Donatello_-_cast.jpg',
  'artist_id' => artist2.id
);
exhibit3 = Exhibit.new(
  'name' => 'The Gaffer',
  'category' => 'Painting',
  'period' =>'2000s',
  'displayed_since' => '2013',
  'view' => 'https://joeharganartist.com/wp-content/uploads/2018/02/The-Gaffer-20x20-inches-oil-on-canvas.jpg',
  'artist_id' => artist3.id
);
exhibit4 = Exhibit.new(
  'name' => 'The Sorrows of the King',
  'category' => 'Painting',
  'period' =>'1900s',
  'displayed_since' => '2005',
  'view' => 'https://www.henrimatisse.org/images/gallery/sorrow-of-the-king.jpg',
  'artist_id' => artist1.id
);

exhibit5 = Exhibit.new(
  'name' => 'St George',
  'category' => 'Sculpture',
  'period' =>'1400s',
  'displayed_since' => '2012',
  'view' => 'https://www.artble.com/imgs/9/b/6/927460/331211.jpg',
  'artist_id' => artist2.id
)
exhibit6 = Exhibit.new(
  'name' => 'Pip',
  'category' => 'Painting',
  'period' =>'2000s',
  'displayed_since' => '2020',
  'view' => 'https://joeharganartist.com/wp-content/uploads/2018/01/PiP-oil-on-canvas-72-x-54-inches-768x1022.jpg',
  'artist_id' => artist3.id
)
exhibit7 = Exhibit.new(
  'name' => 'General Sir David Baird',
  'category' => 'Sculpture',
  'period' =>'1800s',
  'displayed_since' => '2010',
  'view' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Gen_Sir_David_Baird_by_Lawrence_MacDonald%2C_NGS.jpg/1024px-Gen_Sir_David_Baird_by_Lawrence_MacDonald%2C_NGS.jpg',
  'artist_id' => artist4.id
)
exhibit8 = Exhibit.new(
  'name' => 'Monument to Emily Georgiana',
  'category' => 'Sculpture',
  'period' =>'1800s',
  'displayed_since' => '2004',
  'view' => 'https://live.staticflickr.com/5523/11183465033_b1e6cd1c2f_b.jpg',
  'artist_id' => artist4.id
)

exhibit1.save()
exhibit2.save()
exhibit3.save()
exhibit4.save()
exhibit5.save()
exhibit6.save()
exhibit7.save()
exhibit8.save()

binding.pry
nil

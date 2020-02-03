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
  'view' => 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tate.org.uk%2Fart%2Fartworks%2Fmatisse-the-snail-t00540&psig=AOvVaw3ZpKxEMigAeuXivmhExVL_&ust=1580809100985000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNjUm_mKtecCFQAAAAAdAAAAABAE',
  'artist_id' => artist1.id
);
exhibit2 = Exhibit.new(
  'name' => 'Niccolò da Uzzano',
  'category' => 'Bust',
  'period' =>'1400s',
  'displayed_since' => '1988',
  'view' => 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ANiccolo_da_Uzzano_by_Donatello_-_cast.jpg&psig=AOvVaw1Ihx6F4R7SobWSFxeYIWBf&ust=1580809144808000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMj2io6LtecCFQAAAAAdAAAAABAE',
  'artist_id' => artist2.id
);
exhibit3 = Exhibit.new(
  'name' => 'The Gaffer',
  'category' => 'Painting',
  'period' =>'2000s',
  'displayed_since' => '2013',
  'view' => 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fjoeharganartist.com%2Fproject%2Fthe-gaffer%2F&psig=AOvVaw1Y96YheCCgCzRDe2bMoyYA&ust=1580809183604000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOCYxKCLtecCFQAAAAAdAAAAABAE',
  'artist_id' => artist3.id
);
exhibit4 = Exhibit.new(
  'name' => 'The Sorrows of the King',
  'category' => 'Painting',
  'period' =>'1900s',
  'displayed_since' => '2005',
  'view' => 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FThe_Sorrows_of_the_King&psig=AOvVaw0y9bM7UFZUWAXozyEnQHQN&ust=1580809213750000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPCx_66LtecCFQAAAAAdAAAAABAE',
  'artist_id' => artist1.id
);

exhibit1.save()
exhibit2.save()
exhibit3.save()
exhibit4.save()

binding.pry
nil

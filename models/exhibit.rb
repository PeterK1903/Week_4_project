require_relative( '../db/sql_runner' )

class Exhibit

attr_reader :id, :artist_id
attr_accessor :name, :category, :period, :displayed_since, :view

def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @category = options['category']
    @period = options['period']
    @displayed_since = options['displayed_since']
    @view = options['view']
    @artist_id = options['artist_id'].to_i
end

def save()
  sql = "INSERT INTO exhibits (name, category, period, displayed_since, view, artist_id)
        VALUES ($1,$2,$3,$4,$5,$6)
        RETURNING id"
  values = [@name, @category, @period, @displayed_since, @view, @artist_id]
  results = SqlRunner.run(sql, values)
  @id = results.first()['id'].to_i
end

def delete()
  sql = "DELETE FROM exhibits
  WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql, values)
end

def update()
  sql = "UPDATE exhibits
  SET
  (
    name, category, period, displayed_since, view, artist_id
  ) =
  (
    $1, $2, $3, $4, $5, $6
  )
  WHERE id = $7"
  values = [@name, @category, @period, @displayed_since, @view, @artist_id, @id]
  SqlRunner.run(sql, values)
end

def self.find(id)
sql = "SELECT * FROM exhibits
      WHERE id = $1"
values = [id]
results = SqlRunner.run( sql, values )
return Exhibit.new( results.first )
end

def self.all
sql = "SELECT * FROM exhibits"
results = SqlRunner.run( sql )
return results.map {|hash| Exhibit.new( hash )}
end

def self.delete_all
sql = "DELETE FROM exhibits"
SqlRunner.run(sql)
end

def self.map_items(exhibit_data)
  return exhibit_data.map { |exhibit| Exhibit.new(exhibit)}
end

def self.find_by_category(category)
  sql = "SELECT * FROM exhibits WHERE category = $1"
  values = [category]
  result = SqlRunner.run(sql, values)
  category = result.map{|exhibit| Exhibit.new(exhibit)}
  return category
end

def self.find_by_artist_id(artist_id)
  sql = "SELECT * FROM exhibits WHERE artist_id = $1"
  values = [artist_id]
  result = SqlRunner.run(sql, values)
  exhibits = Exhibit.map_items(result)
  return exhibits
end

def artist()
  artist = Artist.find_by_id(@artist_id)
  return artist
end

end

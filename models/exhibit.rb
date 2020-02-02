require_relative( '../db/sql_runner' )

class Exhibit

attr_reader :id, :artist_id
attr_accessor :name, :category, :period, :displayed_since

def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @category = options['category']
    @period = options['period']
    @displayed_since = options['displayed_since']
    @artist_id = options['artist_id'].to_i
end

def save()
  sql = "INSERT INTO exhibits (name, category, period, displayed_since, artist_id)
        VALUES ($1,$2,$3,$4,$5)
        RETURNING id"
  values = [@name, @category, @period, @displayed_since, @artist_id]
  results = SqlRunner.run(sql, values)
  @id = results.first()['id'].to_i
end

def update()
  sql = "UPDATE exhibits
  SET
  (
    name, category, period, displayed_since, artist_id
  ) =
  (
    $1, $2, $3, $4, $5
  )
  WHERE id = $6"
  values = [@name, @age, @dob, @dod, @artist_id, @id]
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

end

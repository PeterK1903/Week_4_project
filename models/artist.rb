require_relative('../db/sql_runner')

class Artist

attr_reader :id
attr_accessor :name, :age, :dob, :dod

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @age = options['age']
    @dob = options['dob']
    @dod = options['dod']
  end

  def save()
    sql = "INSERT INTO artists (name, age, dob, dod)
          VALUES ($1,$2,$3,$4)
          RETURNING id"
    values = [@name, @age, @dob, @dod]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.find(id)
   sql = "SELECT * FROM artists
          WHERE id = $1"
   values = [id]
   results = SqlRunner.run( sql, values )
   return Artist.new( results.first )
  end

  def self.all
   sql = "SELECT * FROM artists"
  results = SqlRunner.run( sql )
  return results.map { |hash| Artist.new( hash ) }
  end

  def self.delete_all
   sql = "DELETE FROM artists"
   SqlRunner.run(sql)
  end

end

require_relative( '../db/sql_runner' )

class Exhibit

def initialize( options )
    @id = options['id'].to_i if options['id']

end

end

class Song

  attr_accessor :name, :album

  def initialize(name:, album:)
    @name = name
    @album = album
  end

end

def self.drop_table
  sql = <<-SQL
    DROP TABLE IF EXISTS songs
  SQL

  DB[:conn].execute(sql)
end

ef self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        album TEXT
      )
    SQL

    DB[:conn].execute(sql)
  end

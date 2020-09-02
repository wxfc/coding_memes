def run_sql(sql)
    db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'coding_memelord'})
    results = db.exec(sql)
    db.close
    return results
end

def find_most_liked_meme()
    
end
def run_sql(sql)
    db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'coding_memelord'})
    results = db.exec(sql)
    db.close
    return results
end

def find_all_memes
    run_sql('SELECT * FROM memes;')
end

def find_one_meme_by_id(id)
    meme = run_sql("SELECT * FROM memes WHERE id = #{id};")
    return meme.first
end

def create_meme(title, meme) #user_id
    sql = "INSERT INTO memes (title, meme) VALUES ('#{title}', '#{meme}');"
    run_sql(sql)
end

def update_meme(id, title, meme)
    sql = "UPDATE memes SET title = '#{title}', meme = '#{meme}' WHERE id = #{id};"
    run_sql(sql)
end

def destroy_meme(id)
    sql = "DELETE FROM memes WHERE id = #{id}"
    run_sql(sql)
end

def find_memes_by_user_id(user_id)
    meme = run_sql("SELECT * FROM memes WHERE user_id = #{user_id};")
    return meme
end

def find_one_meme_by_automation
    memes = run_sql("SELECT * FROM memes WHERE category = 'automation';")
    return memes
end

def find_one_meme_by_google
    memes = run_sql("SELECT * FROM memes WHERE category = 'google';")
    return memes
end

def find_one_meme_by_jobs
    memes = run_sql("SELECT * FROM memes WHERE category = 'jobs';")
    return memes
end

def find_one_meme_by_css
    memes = run_sql("SELECT * FROM memes WHERE category = 'css';")
    return memes
end

def find_one_meme_by_coder_logic
    memes = run_sql("SELECT * FROM memes WHERE category = 'coder logic';")
    return memes
end

def find_one_meme_by_general
    memes = run_sql("SELECT * FROM memes WHERE category = 'general';")
    return memes
end
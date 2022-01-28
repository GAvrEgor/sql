import sqlalchemy
db = 'postgresql://postgres:270194@localhost:5432/music1_1'
engine = sqlalchemy.create_engine(db)
engine.connect()
c = engine.connect().execute("""SELECT * FROM track;""").fetchone()
print(c)

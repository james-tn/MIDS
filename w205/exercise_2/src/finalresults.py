import sys
import psycopg2
conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
cur = conn.cursor()
if len(sys.argv) >1:
	word = str(sys.argv[1])

	cur.execute("SELECT word, count from tweetwordcount WHERE word=%s", [word])
else:
        cur.execute("SELECT word, count from tweetwordcount limit 100")

	
records = cur.fetchall()
for rec in records:

   print "Total number of occurrences of ", rec[0], ": ", rec[1]
conn.commit()
conn.close()



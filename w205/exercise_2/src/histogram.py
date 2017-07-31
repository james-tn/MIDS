import sys
import psycopg2

conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
if len(sys.argv) >1:
	try:
		nums = str(sys.argv[1]).split(",")
		lower = int(nums[0])
		upper = int(nums[1])
	except:
		print "Invalid argument, please use format number,number"
		sys.exit()
cur = conn.cursor()
cur.execute("SELECT word, count from tweetwordcount where count >=%s and count <=%s", (lower, upper))
records = cur.fetchall()
for rec in records:
   print rec[0], ": ", rec[1], "\n"
conn.commit()

conn.close()

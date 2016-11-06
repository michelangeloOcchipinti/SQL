import psycopg2


conn=psycopg2.connect("dbname='Python' user='postgres' host='192.168.56.101' password='bitnami'")

cur=conn.cursor()

cur.execute("""SELECT * FROM personale""")

rows=cur.fetchall()
print "\nMostrami il database:\n"
for row in rows:
    print " ",str(row[0])+' '+row[1]+" "+row[2]+" "+str(row[3])

require 'mysql'

def info()
type=['analytics_all','analytics_year','analytics_month']
type_x = rand(3)

rank = rand(20)

#change ranking from type
if type_x === 0
	ranking = rank
elsif type_x === 1
	ranking = rank / 2
else
	ranking = rank / 4
end


db = Mysql::new("127.0.0.1", "username", "password", "db_name")

res = db.query("SELECT * FROM table_name ORDER BY #{type[type_x]} DESC limit #{ranking},1")

res.each_hash do |row|
return 'Blog_Title;' + row['title'] + ' URL;' + row['loc'] + ' type;' + type[type_x] + ' ranking;' + (ranking+1).to_s

end
end

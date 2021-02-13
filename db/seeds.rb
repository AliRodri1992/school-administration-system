Dir[File.join(Rails.root, 'db', 'seeds', 'catalogs', '*.rb')].sort.each do |seed|
  print "Loading #{seed} ...."
  load seed
  print "DONE\n"
end

require 'csv'
filename = "#{Rails.root}/db/seeds/catalogs/regions.csv"


CSV.foreach(filename, liberal_parsing: true, headers: :first_row) do |row|
  puts row
end
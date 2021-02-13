Dir[File.join(Rails.root, 'db', 'seeds', 'catalogs', '*.rb')].sort.each do |seed|
  print "Loading #{seed} ...."
  load seed
  print "DONE\n"
end

transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts transactions[0]
# * What is the value of the second transaction?
puts transactions[1]
# * What is the value of the fourth transaction?
puts transactions[3]
# * What is the value of the last transaction?
puts transactions[-1]
# * What is the value of the second from last transaction?
puts transactions[-2]
# * What is the value of the 5th from last transaction?
puts transactions[-5]
# * What is the value of the transaction with index 5?
puts transactions[5]
# * How many transactions are there in total?
puts transactions.length
# * How many positive transactions are there in total?
pos = []
transactions.each do |val|
  if val > 0
      pos <<val
   end
 end
 puts pos.length
# * How many negative transactions are there in total?
neg = []
transactions.each do |val|
if val <0
neg << val
end
end
puts neg.length
# * What is the largest withdrawal?
puts transactions.min
# * What is the largest deposit?
puts transactions.max
# * What is the small withdrawal?
withdrawals = []
transactions.each do |a|
  if a < 0
    withdrawals << a
  end
end
puts withdrawals.max
# * What is the smallest deposit?
depo = []
transactions.each do |a|
  if a > 0
    depo << a
  end
end
puts withdrawals.min
# * What is the total value of all the transactions?
sum = 0
transactions.each {|a| sum += a }
puts sum
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
balance = 239900
transactions.each {|a| balance += a}
puts balance


best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts best_records.length
# * Who are all the artists listed?
puts best_records.keys.inspect
# * What are all the album names in the hash?
puts best_records.values.inspect
# * Delete the `Eminem` key-value pair from the list.
puts "#{best_records.delete_if{|a,b| a == "Eminem"}}"
# * Add your favorite musician and their best album to the list.
best_records.store("Ben Howard", "Every Kingdom")
# * Change `Nirvana`'s album to another.
best_records["Nirvana"] = "In Utero"
# * Is `Nirvana` included in `best_records`?
puts best_records.has_key?("Nirvana")
# * Is `Soundgarden` included in `best_records`?
puts best_records.key?("Soundgarden")
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
best_records["Soundgarden"]= "Louder than Love"
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.each_key do |a|
  if a.length <= 6
    puts a
  end
end
# * Which key-value pairs have a value that is greater than 10 characters?
best_records.each_value do |b|
  if b.length > 10
    puts b
  end
end

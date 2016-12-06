# need to fill in to: line to contact samantha , jane , and olivia
golf_contacts = {
  jim: 'workerBee@example.com',
  samantha: 'golfCartRacer@example.com',
  jane: 'pro_golfer89@example.com',
  mike: 'alwaysAtTheBeach@example.com',
  olivia: 'didYouSeeWhereThatWent@example.com',
  joan: 'bestShortGameEver@example.com'
}
#line below doesnt work, how to access multiple keys without creating array?
#puts golf_contacts[:samantha,:jane,:olivia].values.join(', ')
puts [golf_contacts[:samantha], golf_contacts[:jane], golf_contacts[:olivia]].join(', ')

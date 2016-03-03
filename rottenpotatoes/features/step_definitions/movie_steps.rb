Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create(movie)

  end
end


Then /the director of "(.*)" should be "(.*)"/ do |movie, director|
    movie = Movie.where(:title => movie).first
    if movie[:director] != director
      fail
    end
end





# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /^(?:|I )check "([^"]*)"$/ do |field|
  check(field)
end

When /^(?:|I )uncheck "([^"]*)"$/ do |field|
  uncheck(field)
end

When /I check all the ratings/ do
  Movie.all.each do |movie|
    rating = "ratings_" + movie[:rating]
    check(rating)
  end
end

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
end

Then /I should not see: (.*)$/ do |string|
  # Make sure that all the movies in the app are visible in the table

end

Then /I should see: (.*)$/ do |string|
  # Make sure that all the movies in the app are visible in the table
end

Then /I should see all the movies/ do
  # Make sure that all the movies in the app are visible in the table
  actual_number = page.all('#movies tbody tr').size
  value = Movie.all
end


Then /I should see (.*) before (.*)/ do |first, next_|
  html = page.body
  if html.index(first) > html.index(next_)
    fail("out of order")
  end
end
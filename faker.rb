25.times do
	article = Article.new
	article.title = Faker::Lorem.sentence
	article.body = Faker::Lorem.paragraph
	article.published = Faker::Boolean.boolean
	article.published_date = Faker::Date.between(8.months.ago, Date.today)
	article.save
end
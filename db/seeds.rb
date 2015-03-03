# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times {|x| Article.create(author: "author_#{x}", content: "Great content #{x}", name: "name_#{x}", published_at: Date.today)}

5.times{|x| Comment.create(article_id: Article.first.id, content: "My comment #{x}")}

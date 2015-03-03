Railscast sm-rc409
===================
Serializer:
```
Gem is useful if want to customize the JSON output.
```
GemFile basic gems
```
gem 'quiet_assets'
gem 'thin'
gem 'simple_form'
gem 'less-rails'
gem 'twitter-bootstrap-rails'
gem 'devise'

gem 'active_model_serializers'
```
#todo
```
rails g simple_form:install
implement devise
article has_many comments
```
commands to serialize model
```
rails g serializer article
rails g serializer comment

It will create a dedicated class where you can customize the output, and you can append attributes. for example:
attributes: id, name, content

You can make more customized output by removing root node from the output by passing root: false in controller itself.
```

Article controller
```
format.json {render json: @article, root: false}
```
In article_serializer.rb
```
You can add attributes which are not methods of article.
```
Similarly create comment serializer
```
Do association in article
```
Now lets implement conditional attributes
```
display edit url if user email contain 'sm'
refer for more detail http://railscasts.com/episodes/409-active-model-serializers?view=asciicast
```
load some sample data
```
in seed.rb
rake db:seed
```

Rails console
```
rails c
```
Rails server
```
rails s
```

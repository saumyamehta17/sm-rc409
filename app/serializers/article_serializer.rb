class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
  has_many :comments

  embed :ids, include: true   # to include associated comments at top to enhance performance for client side
  #def url
  #  edit_article_url(object)
  #end

  #override attributes method
  def attributes
    data = super
    data[:edit_url] = edit_article_url(object,host: 'localhost:3000') if scope.email.include? 'sm'
    data
  end
end

class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  #respond_to :html

  def index
    @articles = Article.all
    respond_to do |format|
      format.html
    end
    #respond_with(@articles)
  end

  def show
    respond_to do |format|
      format.html
      format.json {render json: @article, root: false}
    end
  end

  def new
    @article = Article.new
    respond_with(@article)
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.save
    respond_with(@article)
  end

  def update
    @article.update(article_params)
    respond_with(@article)
  end

  def destroy
    @article.destroy
    respond_with(@article)
  end

  private
  #def default_serializer_options
  #  {root: false}
  #end

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:name, :author, :content, :published_at)
  end
end

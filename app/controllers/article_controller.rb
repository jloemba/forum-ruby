

class ArticleController < ApplicationController
  def index


    @article =  Article.all
  end

  def edit

  end
end

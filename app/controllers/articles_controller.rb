class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    if params[:theme].blank?
      @articles = Article.all
    else
      @articles = Article.get_articles_by_theme(params[:theme])
    end
  end

  def show
    @article = Article.find_by_id(params['id'])
    redirect_to(:action => 'index') unless @article
  end
  
  def new
    @article = current_user.articles.build
  end
  
  def edit
  end

  def create
    @article = current_user.articles.build(article_params)
    redirect_to(:action => 'index') if @article.save
  end
  
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_article
      @article = Article.find(params[:id])
    end
  
    def article_params
      params.require(:article).permit(:title, :body, :image, :theme_id)
    end
end

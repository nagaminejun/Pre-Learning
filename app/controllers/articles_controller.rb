class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.create(article_params)
    if @article.save
      #flash[:success] = "記事を新規作成しました！！！"
      redirect_to articles_url, notice: "記事を新規作成しました"
    else
      flash.now[:notice] = "やり直してください！！！"
      render :new
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "記事を編集しました！！！"
      redirect_to article_url
    else
      flash.now[:notice] = "やり直してください"
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_url, notice: "記事を削除しました。"
  end

  private
    def article_params
      params.require(:article).permit(:title, :content, :image)
    end
end

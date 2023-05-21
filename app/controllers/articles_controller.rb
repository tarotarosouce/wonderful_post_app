class ArticlesController < ApplicationController
  # before_action :authenticate_user!,except:[:show,:index]
  before_action :set_article, only: %i[ show  edit update destroy]

  def index
    @articles = Article.all
  end

 # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article= Article.new
  end

 # POST /articles
#  binding.pry
  def create
    @article = Article.new(article_params)
    @article.save
      if @article.save
        redirect_to @article, notice: "記事を作成しました。"
      else
        render :new, alert: "記事を作成できませんでした。"
      end
    end
# GET /articles/1/edit
def edit
end

# PATCH/PUT /articles/1
  def update
      if @article.update(article_params)
        redirect_to new_article_path, notice: "記事を更新しました。"
      else
        render :edit, alert: "記事を更新できませんでした。"

      end
    end

  # DELETE /articles/1
  def destroy
    @article.destroy!
      redirect_to new_article_path, notice: "記事を削除しました。"
    end


 private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
  params.require(:article).permit(:title, :content)
  end

end

class ArticlesController < ApplicationController
	def index
		
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		 if @article.save
		 	redirect_to articles_path, notice: "Sucessfully updated the articles"
		 else
		 	render action: "new"
		 end
	end

	def show
	 @article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.new(article_params)
		if @article.update_attributes(article_params)
 				redirect_to articles_path(@article), notice: "Sucessfully updated Drama"
 		else 
 			render action: "edit"
 		end
	end

	def destroy
	 @article = Article.find(params[:id])
	  if @article.destroy
	  redirect_to articles_path, notice: "Sucessfully deleted"
	else
		redirect_to :back
	end
	end

	private
	
	def article_params
	params[:article].permit(:title, :body, :published, :published_date, category_ids:[])
	#category_id which give an array for checkbox will give this parameter as which will be in the array form
    end
end





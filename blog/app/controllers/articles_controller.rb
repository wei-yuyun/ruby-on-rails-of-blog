class ArticlesController < ApplicationController
	def new
	end

	def create
		#show the content of form on the html.[:article] is same as <%= form_for :article ,url:articles_path.....
		# render plain: params[:article].inspect
		@article = Article.new(params[:article])#get the attribute.
		@article.save #save model(database_table) to database.
		redirect_to @article#???????????????????????????
	end
end

class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end

	def show
		@tags = Tag.find_all_by_title(params[:title])
	end
end
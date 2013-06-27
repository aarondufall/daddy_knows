class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end

	def show
		@tags = Tag.find_all_by_question_name(params[:name])
	end
end
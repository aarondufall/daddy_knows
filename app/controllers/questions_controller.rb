class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def new
		@question = Question.new
	end

	def create 
		@question = Question.new(params[:question])
		if @question.save
			redirect_to '/', notice: "Question submitted"
		else
			render :new
		end
	end
end
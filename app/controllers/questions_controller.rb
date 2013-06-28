class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def show
		@question = Question.find(params[:id])
		@answer = Answer.new
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
class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def show
		@question = Question.find(params[:id])
		@answers = @question.answers
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

	def vote
		new_vote = current_user.vote(value: params[:value], question_id: params[:id])
		if new_vote.save
			redirect_to :back, notice: 'Thanks for voting'
		end
	end
end
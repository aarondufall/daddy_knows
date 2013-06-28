class AnswersController < ApplicationController
	def create
		@question = Question.find(params[:question_id])
		@answer = @question.answers.build(params[:answer])
		if @answer.save
			redirect_to @question, notice: "Answer succesfully submitted"
		else
			render "questions/show"# @question, notice: "Failed to save answer"
		end
	end
end
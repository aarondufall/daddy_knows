class VotesController < ApplicationController
	def create
		p params
		new_vote = current_user.vote(value: params[:value], question_id: params[:id])
		if new_vote.save
			redirect_to :back, notice: 'Thanks for voting'
		end
	end


end
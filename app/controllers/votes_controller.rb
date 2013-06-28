class VotesController < ApplicationController
	def create
		if current_user
			new_vote = current_user.votes.create(value: params[:value], votable_type: params[:votable_type]) 
			new_vote.votable_id =  params[:format].to_i
			if new_vote.save
				redirect_to :back, notice: 'Thanks for voting'
			end
		end
	end


end
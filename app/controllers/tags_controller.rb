class TagsController < ApplicationController
	def index
		@tags = Tag.all

			respond_to do |format|
				format.json do
					matches = Tag.search_for_autocomplete(current_query).map(&:to_autocomplete_hash)
					render json: matches
				end
			end
	end

	def show
		@tags = Tag.find_all_by_title(params[:title])
	end

	private

	def current_query
    params[:q].to_s
  end
end
class SearchController < ApplicationController

	def index
		@search = Comp.all.map{|u| [ u.street, u.id ] }
	end

end

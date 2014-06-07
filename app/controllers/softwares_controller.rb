class SoftwaresController < ApplicationController


	def new
		@software = Software.new
	end

	def create
		@software = Software.new(software_params)


		if !@software.errors.empty?
  			redirect_to @software
	

  		flash[:notice] = "HinweiDA s: Vor der Installation solltest Du dir zunächst die Anleitung anschauen!"
  		
  	

  	else
  		redirect_to @software
  		 flash[:error] = "You are missing required fields."
  		 @software.save
	end

end

	def show
  		@software = Software.find(params[:id])
	end

	def index
  		@softwares = Software.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
	end

	def destroy
		@software = Software.find(params[:id]).destroy

		flash[:danger] = "Artikel '#{@software.title}' wurde gelöscht!"

		redirect_to :action => 'index'
	end

	def edit
		@software = Software.find(params[:id])
	end

	def update
		@software = Software.find(params[:id])

		@software.update(software_params)

		flash[:info] = "Artikel '#{@software.title}' wurde aktualisiert!"

		redirect_to software_path(@software)
	end
end

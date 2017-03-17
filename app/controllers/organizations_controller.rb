class OrganizationsController < ApplicationController
	def new
		@organization = Organization.new
	end

	def show
		@organization = Organization.find(params[:id])
	end

	def create
      @organization = Organization.new(organization_params)

      respond_to do |format|
        if @organization.save
          format.html { redirect_to @organization, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @organization }
      	else
          format.html { render :organization }
          format.json { render json: @organization.errors, status: :unprocessable_entity }
      	end
      end
    end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:biography, :email, :password, :name, :phoneNum, :url, :location, :size)
    end
end

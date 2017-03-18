
class OrganizationsController < ApplicationController
  before_action :set_organization, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @organizations = Organization.all
    @user_organization_relationship = UserOrganizationRelationship.new
  end

  def new
    @organization = Organization.new
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def edit
  end

  def create
    @organization = Organization.new(organization_params)

      respond_to do |format|
        if @organization.save
          format.html { redirect_to @organization, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @organization }
      	else
          format.html { render :new }
          format.json { render json: @organization.errors, status: :unprocessable_entity }
      	end
      end
  end

  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:biography, :email, :password, :name, :phoneNum, :url, :location, :size)
    end
end

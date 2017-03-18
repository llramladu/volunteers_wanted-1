class UserOrganizationRelationshipsController < ApplicationController
  before_action :set_user_organization_relationship, only: [:show, :edit, :update, :destroy]

  # GET /user_organization_relationships
  # GET /user_organization_relationships.json
  def index
    @user_organization_relationships = UserOrganizationRelationship.all
  end

  # GET /user_organization_relationships/1
  # GET /user_organization_relationships/1.json
  def show
  end

  # GET /user_organization_relationships/new
  def new
    @user_organization_relationship = UserOrganizationRelationship.new
  end

  # GET /user_organization_relationships/1/edit
  def edit
  end

  # POST /user_organization_relationships
  # POST /user_organization_relationships.json
  def create
    puts params
    @user_organization_relationship = UserOrganizationRelationship.new({:user_id => params[:user_id], :organization_id => params[:organization_id]})

    respond_to do |format|
      if @user_organization_relationship.save
        format.html { redirect_to organizations_path, notice: 'User organization relationship was successfully created.' }
        format.json { render :show, status: :created, location: @user_organization_relationship }
      else
        format.html { render :new }
        format.json { render json: @user_organization_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_organization_relationships/1
  # PATCH/PUT /user_organization_relationships/1.json
  def update
    respond_to do |format|
      if @user_organization_relationship.update(user_organization_relationship_params)
        format.html { redirect_to @user_organization_relationship, notice: 'User organization relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_organization_relationship }
      else
        format.html { render :edit }
        format.json { render json: @user_organization_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_organization_relationships/1
  # DELETE /user_organization_relationships/1.json
  def destroy
    @user_organization_relationship.destroy
    respond_to do |format|
      format.html { redirect_to user_organization_relationships_url, notice: 'User organization relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_organization_relationship
      @user_organization_relationship = UserOrganizationRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_organization_relationship_params
      params.require(:user_organization_relationship).permit(:user_id, :organization_id)
    end
end

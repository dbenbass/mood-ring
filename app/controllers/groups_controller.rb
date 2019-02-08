class GroupsController < ProtectedController
  before_action :set_group, only: %i[update destroy]

  # GET /groups
  def index
    if params[:owner_ring]
      @groups = Group.where(owner_id: current_user.id)
    else
      @groups = Group.all
    end

    render json: @groups
  end

  # GET /groups/1
  def show
    @group = Group.find(params[:id])
    # @group.moods
    render json: @group
  end

  # POST /groups
  def create
    # @group = current_user.owned_groups.build(group_params)
    @group = Group.new(group_params)
    @group.owner_id = current_user.id
    if @group.save
      render json: @group, status: :created, location: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = current_user.owned_groups.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_params
      params.require(:group).permit(:name, :numberofparticipants, :datecreated, :dateupdated, :location)
    end
end

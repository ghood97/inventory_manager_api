# frozen_string_literal: true

class InventoriesController < ProtectedController
  before_action :set_inventory, only: %i[show update destroy]

  # GET /inventories
  def index
    @inventories = current_user.inventories

    if params.key?(:name)
      results = @inventories.filter { |x| x.product.name.downcase.include? params[:name].downcase }
      if results.any?
        render json: results
      else
        render json: {}
      end
    else
      render json: @inventories
    end
  end

  # GET /inventories/1
  def show
    render json: @inventory
  end

  # POST /inventories
  def create
    @inventory = current_user.inventories.build(inventory_params)

    if @inventory.save
      render json: @inventory, status: :created, location: @inventory
    else
      render json: @inventory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inventories/1
  def update
    if @inventory.update(inventory_params)
      render json: @inventory
    else
      render json: @inventory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inventories/1
  def destroy
    @inventory.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_inventory
    @inventory = current_user.inventories.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def inventory_params
    params.require(:inventory).permit(:user_id, :product_id, :price)
  end
end

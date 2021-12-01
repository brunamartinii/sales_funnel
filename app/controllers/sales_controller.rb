class SalesController < ApplicationController
  helper_method :sale

  def index
    @sales  = Sale.all
  end

  def create
    sale = Sale.create_with_progression(sale_params)

    if sale.persisted?
      render json: sale
    else
      head :unprocessable_entity
    end
  end

  def update
    sale = Sale.find(params[:id])

    if sale.progress_to(stage)
      render json: sale
    else
      head :unprocessable_entity
    end
  end

  def show
    @sale = Sale.find(params[:id])
    @progressions = @sale.progressions
  end

  private

  def sale_params
    params.require(:sale).permit(:product, :customer, :amount)
  end

  def stage
    params.require(:sale).require(:stage)
  end
end

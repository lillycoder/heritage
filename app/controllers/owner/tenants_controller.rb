class Owner::TenantsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :show]

  def new
    @townhouse = Townhouse.find(params[:townhouse_id])
    @tenant = Tenant.new
  end

  def create
    @townhouse = Townhouse.find(params[:townhouse_id])
    @tenant = @townhouse.tenants.create(tenant_params)
    redirect_to root_path
  end

  private

  def tenant_params
    params.require(:tenant).permit(:name, :phone, :email, :household, :end_of_lease, :emergency)
  end
end


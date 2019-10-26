class Owner::TenantsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :show]

  def new
    @townhouse = Townhouse.find(params[:townhouse_id])
    @tenant = Tenant.new
  end

  def create
    @tenant = current_townhouse.tenants.create(tenant_params)
    redirect_to root_path
  end

  def show
    current_tenant(tenant_params)
  end

  private

  def current_tenant
    @current_townhouse ||= Townhouse.find(params[:id])
  end

  helper_method :current_townhouse

  def current_townhouse
    @current_townhouse ||= Townhouse.find(params[:townhouse_id])
  end
  
  def tenant_params
    params.require(:tenant).permit(:name, :address, :phone, :email, :household, :end_of_lease, :emergency)
  end
end

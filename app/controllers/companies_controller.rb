class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = "Company successfully created."
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private
  def company_params
    params.require(:company).permit(:name, :catch_phrase)
  end
end

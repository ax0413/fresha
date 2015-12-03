class BuildingsController < ApplicationController

  def index
    @buildings = Building.all
  end
  
  def select
    college_id = params[:college_id]
    @buildings = Building.where(college_id: college_id).order(:bname)
  end

  def search
    @search = Building.where("bname LIKE ?", "#{params[:search]}")
  end
  
  def show
    @building = Building.find(params[:id])
  end
  
  def ev
    if params[:msg].length==0
      msg='내용없음'
    else
      msg=params[:msg]
    end
    Comment.create(building_id: params[:id], bidet: params[:bidet], bok: params[:rating].to_i, chung: params[:rating2].to_i, bun: params[:rating3].to_i, comment: msg)
    @building = Building.find(params[:id])
    @building.avg=(@building.bok+@building.bun+@building.chung)/3
    @building.save
    redirect_to :action => "show", :id => params[:id]
  end
  
  def rating
    @building = Building.find(params[:id])
  end
  
  def rank
    @rank = Building.order(:avg).reverse.take(10)
  end

end

class HomesController < ApplicationController
  def index
  end

  def second
    @user = params[:user]
    @numb = params[:numb]
    if @numb.to_i%2 == 0
      @flag = "짝수"
    elsif @numb.to_i == 1
      redirect_to "/homes/index"
    else
      @flag = "홀수"
    end
  end
end

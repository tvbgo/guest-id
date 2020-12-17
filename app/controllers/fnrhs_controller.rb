class FnrhsController < ApplicationController
  def new
    @fnrh = Fnrh.new
  end

  def create
    @fnrh = Fnrh.new(fnrh_params)
    @fnrh.user = current_user
    if @fnrh.save
      redirect_to user_fnrh_path(current_user, @fnrh)
    else
      render :new
    end
  end

  def show
    @fnrh = Fnrh.find(params[:id])
  end

  private

  def fnrh_params
    params.require(:fnrh).permit(:check_in, :check_out, :meio_de_transporte, :procedencia, :motivo, :prox_dest)
  end
end

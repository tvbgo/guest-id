class FnrhsController < ApplicationController
  def new
    @fnrh = Fnrh.new
  end

  def create
    @fnrh = Fnrh.new(frnh_params)
    if @fnrh.save
      redirect_to user_fnrh_path(@fnrh)
    else
      render :new
    end
  end

  private

  def fnrh_params
    params.require(:fnrh).permit(:check_in, :check_out, :meio_de_transporte, :procedencia, :motivo, :prox_dest)
  end
end

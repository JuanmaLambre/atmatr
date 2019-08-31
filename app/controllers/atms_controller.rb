class AtmsController < ApplicationController

  # GET /atms
  # GET /atms.json
  def index
    network = params[:network]
    bank = params[:bank]
    limit = params[:limit]

    atms = ATM.where(:network => network) if network
    amts = atms.where(:bank => bank) if bank
    atms = atms.limit(limit) if limit

    render json: atms
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def atm_params
      params.permit(:id, :network, :bank, :range, :long, :lat, :limit)
    end

end

class AtmsController < ApplicationController
  before_action :check_params


  # GET /atms
  # GET /atms.json
  def index
    network = params[:network]
    bank = params[:bank]
    limit = params[:limit]
    range = params[:range].to_i
    lat = params[:lat].to_f
    long = params[:long].to_f

    atms = ATM.within(range/1000.0, :origin => [lat, long])

    atms = atms.where(:network => network) if network
    amts = atms.where(:bank => bank) if bank
    atms = atms.limit(limit) if limit

    render json: atms
  end


  private

    def check_params  
      params.require(:range)
      params.require(:long)
      params.require(:lat)
    rescue ActionController::ParameterMissing => error
      render json: {
        status: :error,
        message: error,
        suggestion: 'You can use values range=500 lat=-34.5879346 long=-58.3831004'
      }, status: 400
    end

end

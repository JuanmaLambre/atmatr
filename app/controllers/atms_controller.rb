class AtmsController < ApplicationController


  # GET /atms
  # GET /atms.json
  def index
    check_params([:range, :lat, :long])
    network = params[:network]
    bank = params[:bank]
    limit = params[:limit]
    range = params[:range].to_i
    lat = params[:lat].to_f
    long = params[:long].to_f

    atms = ATM.within(range/1000.0, :origin => [lat, long])

    atms = atms.where(:network => network) if network
    atms = atms.where(:bank => bank) if bank
    atms = atms.limit(limit) if limit

    render json: atms
  end

  def networks
    render json: ATM.select('DISTINCT network')
  end

  def banks
    check_params([:network])
    network = params[:network]
    atms = ATM.where(:network => network) if network
    render json: atms.select('DISTINCT bank')
  end

  private

    def check_params required_params
      required_params.each do |p|
        params.require(p)
      end
    rescue ActionController::ParameterMissing => error
      render json: {
        status: :error,
        message: error,
        suggestion: 'You can use values range=500 lat=-34.5879346 long=-58.3831004'
      }, status: 400
    end

end

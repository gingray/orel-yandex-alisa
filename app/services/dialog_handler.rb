class DialogHandler
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def call
    response = {
        version: params[:version],
        session: params[:session],
        response: {
            text: say,
            end_session: false
        }
    }
    response
  end

  def say
    'Халлоу Дев Дейс'
  end
end
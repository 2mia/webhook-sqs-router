class ApplicationController < ActionController::API
  def index
    render json: {ok: true}
  end

  def queue
    SQS.enqueue(JSON.parse(request.raw_post))
    render json: {ok: true}
  end
end

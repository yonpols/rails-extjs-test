class ApplicationController < ActionController::Base
  protect_from_forgery

  def render_json_list model
    model_class = model.to_s.camelize.constantize
    count = model_class.count

    if params[:sort]
      sort = ActiveSupport::JSON.decode(params[:sort]).first
      sort = "#{sort['property']} #{sort['direction']}"
      items = model_class.order(sort).limit(params[:limit].to_i).offset(params[:start].to_i)
    else
      items = model_class.limit(params[:limit].to_i).offset(params[:start].to_i)
    end

    response = {
      success: true,
      message: 'Item list',
      data: items,
      count: count
    }
    render json: response
  end

  def render_json_updated_created item
    response = {
      success: true,
      message: 'Created / Updated item',
      data: item
    }
    render json: response
  end
end

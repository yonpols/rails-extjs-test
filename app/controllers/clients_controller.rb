class ClientsController < ApplicationController
  # GET /clients.json
  def index
    render_json_list :client
  end

  def show
    @client = Client.find(params[:id])
    render json: @client
  end

  # POST /clients.json
  def create
    @client = Client.new(params[:client])
    if @client.save
      render_json_updated_created @client
    else
      format.html { render action: "new" }
      format.json { render json: @client.errors, status: :unprocessable_entity,  }
    end
  end

  # PUT /clients/1
  # PUT /clients/1.json
  def update
    @client = Client.find(params[:id])

    if @client.update_attributes(params[:client])
      render_json_updated_created @client
    else
      format.html { render action: "new" }
      format.json { render json: @client.errors, status: :unprocessable_entity,  }
    end
  end

  # DELETE /clients/1
  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { render json: {success: true} }
    end
  end
end

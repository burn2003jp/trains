class OperationHistoriesController < ApplicationController
  # GET /operation_histories
  # GET /operation_histories.json
  def index
    @operation_histories = OperationHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @operation_histories }
    end
  end

  # GET /operation_histories/1
  # GET /operation_histories/1.json
  def show
    @operation_history = OperationHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @operation_history }
    end
  end

  # GET /operation_histories/new
  # GET /operation_histories/new.json
  def new
    @operation_history = OperationHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @operation_history }
    end
  end

  # GET /operation_histories/1/edit
  def edit
    @operation_history = OperationHistory.find(params[:id])
  end

  # POST /operation_histories
  # POST /operation_histories.json
  def create
    @operation_history = OperationHistory.new(params[:operation_history])

    respond_to do |format|
      if @operation_history.save
        format.html { redirect_to @operation_history, notice: 'Operation history was successfully created.' }
        format.json { render json: @operation_history, status: :created, location: @operation_history }
      else
        format.html { render action: "new" }
        format.json { render json: @operation_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /operation_histories/1
  # PUT /operation_histories/1.json
  def update
    @operation_history = OperationHistory.find(params[:id])

    respond_to do |format|
      if @operation_history.update_attributes(params[:operation_history])
        format.html { redirect_to @operation_history, notice: 'Operation history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @operation_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operation_histories/1
  # DELETE /operation_histories/1.json
  def destroy
    @operation_history = OperationHistory.find(params[:id])
    @operation_history.destroy

    respond_to do |format|
      format.html { redirect_to operation_histories_url }
      format.json { head :no_content }
    end
  end
end

class OperationNumbersController < ApplicationController
  # GET /operation_numbers
  # GET /operation_numbers.json
  def index
    @operation_numbers = OperationNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @operation_numbers }
    end
  end

  # GET /operation_numbers/1
  # GET /operation_numbers/1.json
  def show
    @operation_number = OperationNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @operation_number }
    end
  end

  # GET /operation_numbers/new
  # GET /operation_numbers/new.json
  def new
    @operation_number = OperationNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @operation_number }
    end
  end

  # GET /operation_numbers/1/edit
  def edit
    @operation_number = OperationNumber.find(params[:id])
  end

  # POST /operation_numbers
  # POST /operation_numbers.json
  def create
    @operation_number = OperationNumber.new(params[:operation_number])

    respond_to do |format|
      if @operation_number.save
        format.html { redirect_to @operation_number, notice: 'Operation number was successfully created.' }
        format.json { render json: @operation_number, status: :created, location: @operation_number }
      else
        format.html { render action: "new" }
        format.json { render json: @operation_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /operation_numbers/1
  # PUT /operation_numbers/1.json
  def update
    @operation_number = OperationNumber.find(params[:id])

    respond_to do |format|
      if @operation_number.update_attributes(params[:operation_number])
        format.html { redirect_to @operation_number, notice: 'Operation number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @operation_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operation_numbers/1
  # DELETE /operation_numbers/1.json
  def destroy
    @operation_number = OperationNumber.find(params[:id])
    @operation_number.destroy

    respond_to do |format|
      format.html { redirect_to operation_numbers_url }
      format.json { head :no_content }
    end
  end
end

class TrainNumbersController < ApplicationController
  # GET /train_numbers
  # GET /train_numbers.json
  def index
    @train_numbers = TrainNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @train_numbers }
    end
  end

  # GET /train_numbers/1
  # GET /train_numbers/1.json
  def show
    @train_number = TrainNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @train_number }
    end
  end

  # GET /train_numbers/new
  # GET /train_numbers/new.json
  def new
    @train_number = TrainNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @train_number }
    end
  end

  # GET /train_numbers/1/edit
  def edit
    @train_number = TrainNumber.find(params[:id])
  end

  # POST /train_numbers
  # POST /train_numbers.json
  def create
    @train_number = TrainNumber.new(params[:train_number])

    respond_to do |format|
      if @train_number.save
        format.html { redirect_to @train_number, notice: 'Train number was successfully created.' }
        format.json { render json: @train_number, status: :created, location: @train_number }
      else
        format.html { render action: "new" }
        format.json { render json: @train_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /train_numbers/1
  # PUT /train_numbers/1.json
  def update
    @train_number = TrainNumber.find(params[:id])

    respond_to do |format|
      if @train_number.update_attributes(params[:train_number])
        format.html { redirect_to @train_number, notice: 'Train number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @train_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_numbers/1
  # DELETE /train_numbers/1.json
  def destroy
    @train_number = TrainNumber.find(params[:id])
    @train_number.destroy

    respond_to do |format|
      format.html { redirect_to train_numbers_url }
      format.json { head :no_content }
    end
  end
end

class TrainLinesController < ApplicationController
  # GET /train_lines
  # GET /train_lines.json
  def index
    @train_lines = TrainLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @train_lines }
    end
  end

  # GET /train_lines/1
  # GET /train_lines/1.json
  def show
    @train_line = TrainLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @train_line }
    end
  end

  # GET /train_lines/new
  # GET /train_lines/new.json
  def new
    @train_line = TrainLine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @train_line }
    end
  end

  # GET /train_lines/1/edit
  def edit
    @train_line = TrainLine.find(params[:id])
  end

  # POST /train_lines
  # POST /train_lines.json
  def create
    @train_line = TrainLine.new(params[:train_line])

    respond_to do |format|
      if @train_line.save
        format.html { redirect_to @train_line, notice: 'Train line was successfully created.' }
        format.json { render json: @train_line, status: :created, location: @train_line }
      else
        format.html { render action: "new" }
        format.json { render json: @train_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /train_lines/1
  # PUT /train_lines/1.json
  def update
    @train_line = TrainLine.find(params[:id])

    respond_to do |format|
      if @train_line.update_attributes(params[:train_line])
        format.html { redirect_to @train_line, notice: 'Train line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @train_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_lines/1
  # DELETE /train_lines/1.json
  def destroy
    @train_line = TrainLine.find(params[:id])
    @train_line.destroy

    respond_to do |format|
      format.html { redirect_to train_lines_url }
      format.json { head :no_content }
    end
  end
end

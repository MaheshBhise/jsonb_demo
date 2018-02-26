class HomeLoansController < ApplicationController
  before_action :set_home_loan, only: [:show, :edit, :update, :destroy]

  # GET /home_loans
  # GET /home_loans.json
  def index
    # HomeLoan.data_contains(rate_type: "fixed", preference: { flexible: true })
    # HomeLoan.where("home_loans.data @> '{\"rate_type\":\"fixed\"}'")
    @home_loans = HomeLoan.all
  end

  # GET /home_loans/1
  # GET /home_loans/1.json
  def show
  end

  # GET /home_loans/new
  def new
    @home_loan = HomeLoan.new
  end

  # GET /home_loans/1/edit
  def edit
  end

  # POST /home_loans
  # POST /home_loans.json
  def create
    @home_loan = HomeLoan.new(data: params[:home_loan])

    respond_to do |format|
      if @home_loan.save
        format.html { redirect_to @home_loan, notice: 'Home loan was successfully created.' }
        format.json { render :show, status: :created, location: @home_loan }
      else
        format.html { render :new }
        format.json { render json: @home_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_loans/1
  # PATCH/PUT /home_loans/1.json
  def update
    respond_to do |format|
      if @home_loan.update(data: params[:home_loan])
        format.html { redirect_to @home_loan, notice: 'Home loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_loan }
      else
        format.html { render :edit }
        format.json { render json: @home_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_loans/1
  # DELETE /home_loans/1.json
  def destroy
    @home_loan.destroy
    respond_to do |format|
      format.html { redirect_to home_loans_url, notice: 'Home loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_loan
      @home_loan = HomeLoan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_loan_params
      params.require(:home_loan).permit(:data)
    end
end

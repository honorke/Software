class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: [:show, :edit, :update, :destroy]

  # GET /shopping_carts
  # GET /shopping_carts.json
  def index
    @shopping_carts = ShoppingCart.where(user_id:params[:user_id])

    #
    # for s in @shopping_carts
    #   book = Book.find_by(id:[s.product_id])
    #   @books+=book
    # end


  end

  # GET /shopping_carts/1
  # GET /shopping_carts/1.json
  def show
    # book_id = ShoppingCart.find_by_sql("select product_id from shopping_carts where id = ?" , params[:id])
    sh = ShoppingCart.find_by(id:params[:id])
    @book = Book.find_by(id: sh.product_id)
  end

  # GET /shopping_carts/new
  def new
    @shopping_cart = ShoppingCart.new
  end

  def cor

    # puts "Form "
    # for id in params[:id]
    #
    #   Order.create()
    # end
  end

  # GET /shopping_carts/1/edit
  def edit
  end

  # POST /shopping_carts
  # POST /shopping_carts.json
  def create
    # @sc= ShoppingCart.where(user_id:params[:user_id], product_id:params[book_id]).first
    puts params[:user_id]
    puts params[:book_id]

    @shopping_cart = ShoppingCart.where("user_id = ? and product_id = ?", params[:user_id], params[:book_id]).first
    @book = Book.find_by(id:params[:book_id])
    puts "@book.title"
    puts @book.title
    if @shopping_cart.nil?
      amount = 0
      @shopping_cart = ShoppingCart.new(user_id:params[:user_id], product_id:params[:book_id], amount:amount+1, picLocation:@book.picLocation, title:@book.title)
    else
      amount = @shopping_cart.amount + 1
      @shopping_cart.amount = amount
      @shopping_cart.save!
    end
    # puts "amount = "
    # puts amount
    #@shopping_cart = ShoppingCart.new(user_id:params[:user_id], product_id:params[:book_id], amount:amount+1)
    # @shopping_cart = ShoppingCart.new(shopping_cart_params)

    respond_to do |format|
      if @shopping_cart.save
        format.html { redirect_to @shopping_cart, notice: 'Shopping cart was successfully created.' }
        format.json { render :show, status: :created, location: @shopping_cart , user_id:params[:user_id]}
      else
        format.html { render :new }
        format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_carts/1
  # PATCH/PUT /shopping_carts/1.json
  def update
    respond_to do |format|
      if @shopping_cart.update(shopping_cart_params)
        format.html { redirect_to @shopping_cart, notice: 'Shopping cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping_cart }
      else
        format.html { render :edit }
        format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_carts/1
  # DELETE /shopping_carts/1.json
  def destroy
    user_id = @shopping_cart.user_id
    @shopping_cart.destroy
    respond_to do |format|
      format.html { redirect_to shopping_carts_url(user_id:user_id ), notice: 'Shopping cart was successfully destroyed.' }
      format.json { head :no_content}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_cart
      @shopping_cart = ShoppingCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_cart_params
      params.require(:shopping_cart).permit(:user_id, :product_id, :amount)
    end
end

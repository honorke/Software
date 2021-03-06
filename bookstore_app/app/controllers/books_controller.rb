require 'jieba_rb'
require 'will_paginate/array'

class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  $seg = JiebaRb::Segment.new
  # GET /books
  # GET /books.json
  def index
    @books = Book.paginate(page: params[:page])

  end

  # def search_book
  #   if params[:q].nil?
  #     @result = []
  #   else
  #     @result = Book.search_book(params[:q]).painate(page:1, per_page: 10)
  #   end
  # end
  def search
    # if params[:title].nil?
    #    index
    # else
      # @user = User.paginate(page: params[:page], per_page: 9).where(:admin => 'false')
      words = $seg.cut(params[:title])
      puts words
      # @search_books = Book.paginate(page: params[:page], per_page: 10).where(:title  '%#{words}%')
      # @search_books = Book.paginate(page: params[:page]).where("title like ?" , "%#{params[:title]}%")
      @search_books = Book.where("title like ? ", "%#{params[:title]}%").limit(10).offset(0)
      for word in words
        @search_books += Book.where("title like ? ", "%#{word}%").limit(10).offset(0)
      end



       #@search_books = Book.paginate(page: params[:page], per_page: 10).where("title like ?" , "%#{params[:title]}%")
      # @search_books = Book.search(params[:title]).paginate(page:1,per_page:10)

      # @search_books = Book.paginate(page: params[:page] ,
      #                                :per_page => 10 ,
      #                               :conditions => ['title like ?' "%#{params[:title]}%"]

      # )
      # for b in @search_books
      #   puts b.title
      # end
    end


  # GET /books/1
  # GET /books/1.json
  def show
    @orders = Order.where(book_id: @book.id)
    resp = Array.new(13000,-1)
    for order in @orders
      print("order_no")
      puts order.order_no
      @books = Order.where(order_no: order.order_no)
      print("book_id")
      for book in @books
        if book.book_id != @book.id
          puts(book.book_id)
          resp[book.book_id] += 1
        end
      end
    end

    # dataSet = [
    #     [1,3,4],
    #     [2,3,5],
    #     [1,2,3,5],
    #     [2,5]
    # ]
    for i in 0..resp.length-1
      if(resp[i]!=-1)
        print(i)
        print("   ")
        puts(resp[i])
      end
    end

     # for i in 0..10
     #   puts "resp[i]"
     #   puts resp[i]
     # end

    temp = resp.sort{ |x, y| y <=> x}
    # for i in 0..temp.length-1
    #   puts temp[i]
    #
    # end
    # puts("temp")
    # for i in 0..5
    #   puts(temp[i])
    # end
    # temp = temp.flatten
    # for i in 0..10
    #   puts "temp[i]"
    #   puts temp[i]
    # end

    result = Array.new
    flag = true
    for i in 0..resp.length - 1
      if(resp[i] == temp[0] && resp[i] != -1 && flag == true)
        result[0] = i
        flag = false
        # puts("000")
        # puts(i)
      end
    end
    flag = true
    for i in 0..resp.length - 1
      if(resp[i] == temp[1] && flag == true && i != result[0] && resp[i] != -1)
        # puts("001")
        # puts(i)
        # puts(result[0])
        result[1] = i
        flag = false
      end
    end
    flag = true
    for i in 0..resp.length - 1
      if(resp[i] == temp[2] && flag == true && i != result[0] && i != result[1] && resp[i] != -1)
        result[2] = i
        # puts("002")
        # puts(i)
        flag = false
      end
    end
    flag = true
    for i in 0..resp.length - 1
      if(resp[i] == temp[3] && flag == true && i != result[0] && i != result[1] && i != result[2] && resp[i] != -1)
        result[3] = i
        flag = false
        # puts("003")
        # puts(i)
      end
    end
    # puts("result")
    # puts("result size = ")
    # puts(result.length)

    for i in 0..result.length - 1
      puts(result[i])
      puts("hello, world")
    end

    if result[0] != nil && result[0] != -1
      @recommend_book1 = Book.find(result[0])
      puts(@recommend_book1.title)
    else
      @recommend_book1 = Book.where("title like ?", "%docker%").first
    end


    if result[1] != nil && result[1] != -1
      @recommend_book2 = Book.find(result[1])
      puts(@recommend_book2.title)
    else
      @recommend_book2 = Book.where("title like ?", "%Python%").first
    end

    if result[2] != nil && result[2] != -1
      @recommend_book3 = Book.find(result[2])
      puts(@recommend_book3.title)
    else
      @recommend_book3 = Book.where("title like ?", "%Nginx%").first
    end

    if result[3] != nil && result[3] != -1
      @recommend_book4 = Book.find(result[3])
      puts(@recommend_book4.title)
    else
      @recommend_book4 = Book.where("title like ?", "%Scrum%").first
    end




  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :price, :author, :publish, :time, :path, :picLocation)
    end
end

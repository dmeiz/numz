class Nums < Application
  
  def index
    render
  end

  def new
    @num = Num.new

    if request.post?
      @num.value = params[:num][:value]
      @num.save
      redirect "list"
    else
      render
    end
  end

  def list
    @nums = Num.all
    render
  end
  
end

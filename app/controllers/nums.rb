class Nums < Application
  
  def index
    render
  end

  def new
    @num = Num.new

    if request.post?
      @num.value = params[:num][:value]
      @num.relevant_at = Chronic.parse(params[:relevant_at])
      @num.link = params[:link]

      if @num.save
        flash[:notice] = "Num created"
        return redirect("list")
      else
        return render
      end
    else
      render
    end
  end

  def list
    @nums = Num.all
    render
  end
  
end

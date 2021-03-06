class Nums < Application
  
  def index
    render
  end

  def new
    @tagnames = ""
    @value = ""
    @unit = ""
    @desc = ""
    @num = Num.new

    if request.post?
      @tagnames = params[:tagnames]
      @value = params[:value]
      @unit = params[:unit]
      @desc = params[:desc]

      @num.value = @value

      unless @num.unit = Unit.first(:name => @unit)
        @num.unit = Unit.new(:name => @unit)
      end

      unless params[:relevant_at].blank?
        @num.relevant_at = Chronic.parse(params[:relevant_at])
        @num
      end
      @num.link = params[:link]

      if @num.valid?

        # add tags
        params[:tag_names].split(" ").each do |tag_name|
          unless tag = Tag.first(:name => tag_name)
            tag = Tag.new(:name => tag_name.downcase)
            tag.save!
          end

          @num.tags << tag
        end

        @num.save!

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
    @nums = Num.all(:order => "relevant_at")
    render
  end
  
end

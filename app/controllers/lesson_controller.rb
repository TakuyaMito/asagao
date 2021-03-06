class LessonController < ApplicationController
  def step1
    render plain: "こんにちは#{params[:name]}"
  end

  def step2
    render plain: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: "step4"
  end

  def step4
    render plain: "step4に移動しました"
  end

  def step5
    flash[:notice] = "step6に移動します"
    redirect_to action: "step6"
  end

  def step6
    render plain: flash[:notice]
  end

  def step7
    @price = (2000 * 1.10).floor
  end

  def step8
    @price = 1000
    render "step7"
  end

  def step9
    @comment = "<script>alert('危険!')</script>こんにちは"
  end

  def step11
    @population = 704414
    @surface = 141.31
  end

  def step12
    @time = Time.current
  end

  def step18
    @items = { "フライパン" => 2580, "ワイングラス" => 2550, "ペッパーミル" => 4515, "ピーラー" => 900}
  end
end

class PostsController < ApplicationController
  def index
    @posts = Post.all # Post모델 전체를 가지고온다. 이 all의 의미는 선택할 수 있는 의미가 아닌 모든 것을 말한다.
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title] #모델 컬럼 정보와 뷰에서 넘겨온 form action으로 넘어온 hash 심볼 title 키를 매칭시켜준다. new.html.erb에서 post방식으로 보내온 name="title"을 params로 모델 컬럼 @post(=Post.new).title 연결
    # => #<Post id: nil, title: "wonno", content: nil, created_at: nil, updated_at: nil>
    @post.content = params[:content] #모델 컬럼 정보와 매칭시켜준다. new에서 가지고온 name="content"을 params로 모델 컬럼 @post(=Post.new).content 연결
    @post.save #컬럼에 입력된 정보를 post 모델에 저장 한다.

    redirect_to "/posts/index"
  end

  def show
    @post = Post.find(params[:id]) # 라우터에서 보내온 id를 기준으로 Post 모델에서 id 값을 기준으로 찾을 수 있다.
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.title = params[:title]
    @post.content = params[:content]

    @post.save

    redirect_to "/posts/index"
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy

    redirect_to "/posts/index"
  end
end

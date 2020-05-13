class User
  attr_accessor :name

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
    text = ""
    if adult?
      text = "初めまして、私の名前は#{@name}だよ\n\n"
    else
      text = "ぼくは#{@name}だよ\n\n"
    end

    text += "自己紹介は終わり\n"
    text += "----------------------"

    text
  end

  private
  def adult?
    @age >= 20
  end
end

def build_users(params)
  users = []
  params.each do |params|
    users << User.new(params)
  end

  users
end

params = [{name: "saitou", age: 22}, {name: "taira", age: 12}, {name: "yamada", age: 99}]

users = build_users(params)

users.each do |user|
  puts user.introduce
end

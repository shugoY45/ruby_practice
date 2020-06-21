# クラスの継承

class User

  @@count = 0

  VERSION = 1.1

  attr_accessor :name
  # setter: name=(value)
  # getter: name

  def initialize(name)
    @@count += 1
    @name = name
  end

  def sayHi
    # self
    # self.name -> @name
    puts "hi! i am #{@name}"
    # puts "hi! i am #{self.name}"
    # puts "hi! i am #{name}"
  end

  def self.info
    puts "#{VERSION}: User Class, #{@@count} instance."
  end
end

# User: 親クラス、super class
# AdminiUser: 子クラス、 Sub Class

class AdminUser < User


  def sayHello
    puts "Hello from #{@name}"
  end

# オーバーライド
  def sayHi
    puts "hi! from admin!"
  end
end


tom = AdminUser.new("tom")
tom.sayHi
tom.sayHello

# tom = User.new("tom")
# bob = User.new("bob")
# steve = User.new("steve")
#
# User.info
# p User::VERSION

# din = User.new("din")
# p din.info

  # tom = User.new("tom")
#
# tom.name = "tom Jr."
# p tom.name
#
 # tom.sayHi #レシーバー
#
#
# bob = User.new("bob")
# bob.sayHi

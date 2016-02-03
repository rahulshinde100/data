class User

  def full_name
    puts "Johnnie Walker"
  end

 alias name full_name
end

User.new.name #=>Johnnie Walker
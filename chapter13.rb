class OrangeTree

  def initialize
    @height = 10
    @oranges = 0
    @age = 1
  end
  
  def height
    puts @height
  end

  def one_year_passes
    @height += 1
    @age += 1
    if @age > 12
      puts "I\'m sorry your tree has died"
    end
    if @age > 3
      @oranges += 2
    end
    if @age > 6
      @oranges += 3
    end
  end

  def count_the_oranges
    puts @oranges
  end

  def pick_an_orange
    puts "That orange was delicious!!"
    @oranges -= 1
  end


end


new_orange_tree = OrangeTree.new
new_orange_tree.height
new_orange_tree.count_the_oranges
new_orange_tree.one_year_passes
new_orange_tree.height
new_orange_tree.count_the_oranges
new_orange_tree.one_year_passes
new_orange_tree.height
new_orange_tree.count_the_oranges
new_orange_tree.one_year_passes
new_orange_tree.height
new_orange_tree.count_the_oranges
new_orange_tree.one_year_passes
new_orange_tree.height
new_orange_tree.count_the_oranges
new_orange_tree.one_year_passes
new_orange_tree.height
new_orange_tree.count_the_oranges
new_orange_tree.one_year_passes
new_orange_tree.height
new_orange_tree.count_the_oranges
new_orange_tree.one_year_passes

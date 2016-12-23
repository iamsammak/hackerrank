#each

def scoring(array)
  array.each { |user| user.update_score }
end


#unless

def scoring(array)
  array.each { |user| user.update_score unless user.is_admin? }
end

#infinite loop

#loop do
#end

loop do
  coder.practice
  break if coder.oh_one?
end

#until

until coder.oh_one?
  coder.practice
end

#case (bonus question)

def identify_class(obj)
  case obj.class.name
    when 'Hacker'
      puts "It's a Hacker!"
    when 'Submission'
      puts "It's a Submission!"
    when 'TestCase'
      puts "It's a TestCase!"
    when 'Contest'
      puts "It's a Contest!"
    else
      puts "It's an unknown model"
  end
end

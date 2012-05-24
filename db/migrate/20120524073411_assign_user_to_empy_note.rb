class AssignUserToEmpyNote < ActiveRecord::Migration
  def up
    u = User.last
    Note.all.each do |n| 
      puts n.inspect    
      puts u.inspect 
      n.user = User.last if n.user.nil?
      n.save!
    end
  end

  def down
  end
end

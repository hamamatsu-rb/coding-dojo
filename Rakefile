namespace :dojo do
  
  desc "When you greet 'osu!' , gate of the 'dojo' would open."
  task :osu! do
    dir = ENV["dojo_name"]
    fail "please specify 'dojo_name'" unless dir 

    sh "mkdir #{dir}"
    Dir::chdir(dir) do
      sh "rspec --init"
      sh "bundle init"
      sh <<-EOS
        echo gem "'rspec'" >> Gemfile
      EOS
      sh "bundle install --path .bundle"
      sh "mkdir src"
    end

    puts "\r\nCongratulations.\r\nGates of the dojo was opened."
    puts "'cd #{dir}' , and Strive to 'Shugyo'."
  end


  desc "Delete your dojo"
  task :hamon do
    dir = ENV["dojo_name"] 
    fail "please specify 'dojo_name'" unless dir 
      
    sh "rm -rf #{dir}"
    puts "You was 'Hamon'"
  end  

end


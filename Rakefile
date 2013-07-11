namespace :dojo do
  
  desc "When you greet 'osu!' , gate of the 'dojo' would open."
  task :osu! do
    dir = ENV["dojo_name"]
    fail "please specify 'dojo_name'" unless dir 

    sh "mkdir #{dir}"
    Dir::chdir(dir) do
      sh "bundle init"
      if RUBY_PLATFORM =~ /(mingw|mswin)/
        sh <<-EOS
	        echo gem 'rspec' >> Gemfile
	      EOS
	    else 
	      sh <<-EOS
	        echo gem "'rspec'" >> Gemfile
	      EOS
	    end
      sh <<-EOS
        echo .bundle > .gitignore
      EOS
      sh "bundle install --path .bundle"
      sh "bundle exec rspec --init"
      sh "mkdir src"
      sh "git branch #{dir}"
      sh "git checkout #{dir}"
    end

    puts "\r\nMay The Code be with you..."
  end


  desc "Delete your dojo"
  task :hamon do
    dir = ENV["dojo_name"] 
    fail "please specify 'dojo_name'" unless dir 
      
    sh "rm -rf #{dir}"
    sh "git checkout master"
    sh "git branch -d #{dir}"
    puts "You was 'Hamon'"
  end  

end


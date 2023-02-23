require "filewatcher"

def file_watching
  puts "===================="
  system "clear"
  begin
    system("ruby index.rb")
    # load("./index.rb")
  rescue SyntaxError => err
    puts err
    create_watcher()
  rescue => exception
    puts exception
  end
end

def create_watcher
  Filewatcher.new("./").watch do |changes|
    file_watching()
  end
end

file_watching()
create_watcher()

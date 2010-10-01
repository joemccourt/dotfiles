require 'rake'

$home = ENV['HOME']

task :install do
  replace_all = false
  skip = %w[Rakefile README.rdoc LICENSE]
  Dir['*'].each do |file|
    next if skip.include? file
    dotfile = dotfile_name(file)
    if File.exist?(dotfile)
      if File.identical?(file, dotfile)
        puts "identical #{dotfile}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite #{dotfile}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping #{dotfile}"
        end
      end
    else
      link_file(file)
    end
  end
end

def replace_file(file)
  dotfile = dotfile_name(file)
  system %Q(rm -rf #{dotfile})
  link_file(file)
end

def link_file(file)
  dotfile = dotfile_name(file)
  puts "linking #{dotfile}"
  system %Q(ln -s "$PWD/#{file}" #{dotfile})
end

def dotfile_name(file)
  return File.join($home, ".#{file}")
end

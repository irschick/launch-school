def fileExercises
  File.open("simple_file.txt", "w") { |file| file.write("adding first line of text") }
  # We first open the file with the w option and invoke a block that writes the contents we specify to the file. This way of doing things makes sure the file closes at the end of the block.
  File.read("simple_file.txt")
  
  # Alternatively, we could open the file, write to it and finally close it. Let's see how that works with puts:
  sample = File.open("simple_file1.txt",  "w+")
  sample.puts("using puts to write to a file")
  sample.close

  File.read("simple_file.txt")
  File.open("simple_file.txt", "a+") do |file|
    file << "Here we are with a new line of text"
  end

  File.readlines("simple_file1.txt").each do |line|
    puts line
  end

  File.open("simple_file.txt", "a+") do |file|
    file.write "Writing to files in Ruby is simple."
  end
  File.readlines("simple_file.txt").each_with_index do |line, line_num|
    puts "#{line_num}: #{line}"
  end
  File.new("dummy_file.txt", "w+")
  File.delete("dummy_file.txt")

  simple = File.read("simple_file.txt")
  original = File.new("original_file.txt", "w+")
  File.open(original, "a") do |file|
    file.puts simple
  end
  new_file = File.read(original)
  puts new_file

  require 'pathname'
  f = File.new("simple_file.txt", "r")
  pn = Pathname.new(f)
  puts pn.extname
  puts File.extname("simple_file.txt")

  d = Dir.new(".")
  while file = d.read do
    puts "#{file} has extension .txt" if File.extname(file) == ".txt"
  end

  require 'pathname'
  pn = Pathname.new(".")
  pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt" }

  # wget -O feedzilla.json https://d186loudes4jlv.cloudfront.net/ruby/feedzilla.json
  # wget -O slashdot.xml https://d186loudes4jlv.cloudfront.net/ruby/slashdot.xml
  require 'json'
  require 'nokogiri'
  require 'axlsx'
  require 'csv'
  slashdot_articles = []
  File.open("slashdot.xml", "r") do |f|
    doc = Nokogiri::XML(f)
    slashdot_articles = doc.css('item').map { |i|
      {
        title: i.at_css('title').content,
        link: i.at_css('link').content,
        summary: i.at_css('description').content
      }
    }
  end
  feedzilla_articles =[]
  File.open("feedzilla.json", "r") do |f|
    items = JSON.parse(f.read)
    feedzilla_articles= items['articles'].map { |a|
      {
        title: a['title'],
        link: a['url'],
        summary: a['summary']
      }
    }
  end
  sorted_articles =  (feedzilla_articles + slashdot_articles).sort_by {|a| a[:title]}
  puts sorted_articles

  # export to csv
  CSV.open("article.csv", "wb") do |csv|
    sorted_articles.each { |a| csv << [ a[:title], a[:link], a[:summary] ]  }
  end
  pkg = Axlsx::Package.new
  pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
   sorted_articles.each { |a| sheet.add_row [a[:title], a[:link], a[:summary]] }
  end
  pkg.serialize("articles.xlsx")
end
fileExercises

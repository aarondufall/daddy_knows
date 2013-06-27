# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


tags = [
  {
   name: "c#",
   count: 478670,
   fullfills_required: false
  },
  {
   name: "java",
   count: 437157,
   fullfills_required: false
  },
  {
   name: "php",
   count: 405054,
   fullfills_required: false
  },
  {
   name: "javascript",
   count: 397329,
   fullfills_required: false
  },
  {
   name: "android",
   count: 349807,
   fullfills_required: false
  },
  {
   name: "jquery",
   count: 329084,
   fullfills_required: false
  },
  {
   name: "c++",
   count: 208982,
   fullfills_required: false
  },
  {
   name: "python",
   count: 198549,
   fullfills_required: false
  },
  {
   name: "html",
   count: 180398,
   fullfills_required: false
  },
  {
   name: "asp.net",
   count: 175411,
   fullfills_required: false
  },
  {
   name: "iphone",
   count: 175380,
   fullfills_required: false
  },
  {
   name: "mysql",
   count: 171748,
   fullfills_required: false
  },
  {
   name: ".net",
   count: 157787,
   fullfills_required: false
  },
  {
   name: "ios",
   count: 155114,
   fullfills_required: false
  },
  {
   name: "css",
   count: 140381,
   fullfills_required: false
  },
  {
   name: "sql",
   count: 139515,
   fullfills_required: false
  },
  {
   name: "objective-c",
   count: 138979,
   fullfills_required: false
  },
  {
   name: "ruby-on-rails",
   count: 120105,
   fullfills_required: false
  },
  {
   name: "c",
   count: 99395,
   fullfills_required: false
  },
  {
   name: "ruby",
   count: 75929,
   fullfills_required: false
  },
  {
   name: "sql-server",
   count: 69720,
   fullfills_required: false
  },
  {
   name: "wpf",
   count: 66256,
   fullfills_required: false
  },
  {
   name: "xml",
   count: 65840,
   fullfills_required: false
  },
  {
   name: "ajax",
   count: 64764,
   fullfills_required: false
  },
  {
   name: "asp.net-mvc",
   count: 62079,
   fullfills_required: false
  },
  {
   name: "regex",
   count: 61519,
   fullfills_required: false
  },
  {
   name: "database",
   count: 57343,
   fullfills_required: false
  },
  {
   name: "arrays",
   count: 55188,
   fullfills_required: false
  },
  {
   name: "xcode",
   count: 54766,
   fullfills_required: false
  },
  {
   name: "django",
   count: 54037,
   fullfills_required: false
  },
  {
   name: "linux",
   count: 53997,
   fullfills_required: false
  },
  {
   name: "windows",
   count: 50421,
   fullfills_required: false
  },
  {
   name: "json",
   count: 48817,
   fullfills_required: false
  },
  {
   name: "vb.net",
   count: 48644,
   fullfills_required: false
  },
  {
   name: "eclipse",
   count: 46018,
   fullfills_required: false
  },
  {
   name: "ruby-on-rails-3",
   count: 44956,
   fullfills_required: false
  },
  {
   name: "facebook",
   count: 44093,
   fullfills_required: false
  },
  {
   name: "string",
   count: 40866,
   fullfills_required: false
  },
  {
   name: "multithreading",
   count: 38568,
   fullfills_required: false
  },
  {
   name: "winforms",
   count: 38027,
   fullfills_required: false
  },
  {
   name: "html5",
   count: 36327,
   fullfills_required: false
  },
  {
   name: "visual-studio-2010",
   count: 34817,
   fullfills_required: false
  },
  {
   name: "asp.net-mvc-3",
   count: 34490,
   fullfills_required: false
  },
  {
   name: "image",
   count: 34237,
   fullfills_required: false
  },
  {
   name: "performance",
   count: 32609,
   fullfills_required: false
  },
  {
   name: "wordpress",
   count: 32552,
   fullfills_required: false
  },
  {
   name: "r",
   count: 32131,
   fullfills_required: false
  },
  {
   name: "osx",
   count: 32015,
   fullfills_required: false
  },
  {
   name: "forms",
   count: 31525,
   fullfills_required: false
  },
  {
   name: "query",
   count: 30689,
   fullfills_required: false
  },
  {
   name: "algorithm",
   count: 30663,
   fullfills_required: false
  },
  {
   name: "wcf",
   count: 30615,
   fullfills_required: false
  },
  {
   name: "linq",
   count: 30399,
   fullfills_required: false
  },
  {
   name: "spring",
   count: 29592,
   fullfills_required: false
  },
  {
   name: "web-services",
   count: 29436,
   fullfills_required: false
  },
  {
   name: "oracle",
   count: 29418,
   fullfills_required: false
  },
  {
   name: "swing",
   count: 28653,
   fullfills_required: false
  },
  {
   name: "git",
   count: 28396,
   fullfills_required: false
  },
  {
   name: "perl",
   count: 28243,
   fullfills_required: false
  },
  {
   name: "visual-studio",
   count: 28094,
   fullfills_required: false
  },
  {
   name: "sql-server-2008",
   count: 27667,
   fullfills_required: false
  },
  {
   name: "actionscript-3",
   count: 27363,
   fullfills_required: false
  },
  {
   name: "ipad",
   count: 26650,
   fullfills_required: false
  },
  {
   name: "excel",
   count: 26633,
   fullfills_required: false
  },
  {
   name: "apache",
   count: 26391,
   fullfills_required: false
  },
  {
   name: "entity-framework",
   count: 26007,
   fullfills_required: false
  },
  {
   name: "cocoa-touch",
   count: 25708,
   fullfills_required: false
  },
  {
   name: "cocoa",
   count: 25582,
   fullfills_required: false
  },
  {
   name: "hibernate",
   count: 25420,
   fullfills_required: false
  },
  {
   name: "flash",
   count: 24871,
   fullfills_required: false
  }
 ]
tags.each do |tag|
  Tag.create(:title => tag[:name], :description => Faker::Lorem.words(num=4))
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
['哲学与宗教', '法律', '政治与军事', '心理学', '艺术与摄影', '历史', '国学', '社会科学', '文学', '传记', '经济管理', '计算机与互联网', '医学'].each do |co|
  Category.create(name: co)
end
a = ['中国哲学', '西方哲学', '东方哲学']
b = ['民法', '刑法', '经济法']
c = ['中国政治', '世界政治', '军师']
d = ['心理学理论', '女性心理学', '男性心理学']
e = ['艺术史', '鉴赏收藏', '书法']
f = ['中国历史', '非洲历史', '文物考古']
g = ['经部', '史部', '子部']
h = ['社会学', '语言文字', '文化']
k = ['文学史', '作品集', '散文随笔']
l = ['财经人物', '历代帝王', '政治人物']
m = ['管理学', '企业经营与管理', '投资理财']
n = ['考试与考证', '操作系统', '程序语言与软件开发']
o = ['卫生学', '基础医学', '临床医学']

[a,b,c,d,e,f,g,h,k,l,m,n,o].each_with_index do |sub, index|
  sub.each do |co|
    Category.create name: co, parent_id: (index+1)
  end
end

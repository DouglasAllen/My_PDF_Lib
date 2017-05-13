# rlcr_w03_ex16.rb

#Exercise16. Select all correct ways to do an ascending sort by string length.

a = ["Magazine", "Sunday", "Jump"]
p a.sort { |l, r| l <=> r }
a = ["Magazine", "Sunday", "Jump"]
p a.sort { |l, r| l.length <=> r.length }
a = ["Magazine", "Sunday", "Jump"]
p a.sort_by { |s| s }
a = ["Magazine", "Sunday", "Jump"]
p a.sort_by { |s| s.length }
#Answers:
#1. a.sort
#2. a.sort { |s| s }
#3. a.sort { |l, r| l <=> r }
#4. a.sort { |l, r| l.length <=> r.length }
#5. a.sort_by { |s| s }
#6. a.sort_by { |s| s.length }

 

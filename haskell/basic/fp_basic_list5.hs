--- Original Link 
--- https://www.hackerrank.com/challenges/fp-reverse-a-list/problem

rev [] = []
rev l = last l : rev(init l)






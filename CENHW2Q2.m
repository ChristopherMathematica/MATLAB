function count_words = sentenceSlice1(userString)

% strtrim() to remove leading and following white space in string
userString = strtrim(userString);

% Display user input 
disp("Given sentence : \n");
disp(userString);
disp(' ');

% cast given user string to array of chars
sentanceAschars = char(userString);

% get the length of the character array.
% the returned length will be a vector dimension in the format [x, y]
% example: if sentanceAschars = "Dog is Twenty",
% then size(sentanceAschars) gives output 1 13, which is vector size
% hence we take size(sentanceAschars, 2), which gives output 13
stringElements = size(sentanceAschars, 2);

% an indicator for when to leave the while-loop, start false
isWordsLeftToScan=0;

% beginning index of char array
BeginningIndexofWord=1;
disp('Sentence broken into list of words :');
while true
% endIndexofWord will be same as BeginningIndexofWord, eventually
% endIndexofWord will increase till white space is not seen.
endIndexofWord = BeginningIndexofWord;
  
% search the char array till white space is not found.
while sentanceAschars(endIndexofWord) ~= ' '
% increment endIndexofWord till white space cannot be found
endIndexofWord = endIndexofWord + 1;
  
% Using greater than function, this if-statement creates 
% a boundary for handling the case of last word, since the final
% word won't have any white space after that.
% example: sentanceAschars = Dog is Twenty, since 'Twenty' is the last word
% after which the char array ends. 
if gt(endIndexofWord, stringElements)
% decrease endIndexofWord value by 1, if the index end is larger
% than the number of words
endIndexofWord = endIndexofWord - 1;
  
% make true when the words run out
isWordsLeftToScan=1;
break
end
end
  
% print individual words.
disp(sentanceAschars(BeginningIndexofWord:endIndexofWord))
  
% exit the while loop once there are no more words to display.
if isWordsLeftToScan==1
break
end
  
% the start of next word is from where the previous word ends. For eg:
% sentanceAschars = Dog is Twenty. Here, once the word Sun is scanned,
% endIndexofWord=4, since white space is there at index 4. The first
% letter of next word 'is', which is 'i', starts from index 5.
BeginningIndexofWord = endIndexofWord+1;
end
end
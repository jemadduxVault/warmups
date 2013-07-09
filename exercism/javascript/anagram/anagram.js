Anagram = function(word){
  this.match = function(matches){
    answer = [];

    var normalize = function(input){
      return input.split("").sort().toString()
    }

    var compareArrays = function(first, second){
      return normalize(first) === normalize(second);
    };

    for(var i = 0; i < matches.length; i++){
      if (compareArrays(matches[i], word)){
        answer.push(matches[i]);
      }
    }
    return answer;
  }
};

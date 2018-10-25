def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  arr = tweet.split 
  arr.map do |word|
    dictionary.map do |key, val|
      word.replace(val) if word.downcase == key
    end 
  end
  arr.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
<<<<<<< HEAD
  tweet.length > 140 ? word_substituter(tweet) : tweet
end 

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet = tweet[0..136] + "..." : tweet
=======
  tweet.chars.count > 140 ? word_substituter(tweet) : tweet
end 

def shortened_tweet_truncator(tweet)
  tweet = tweet[0..136]
>>>>>>> 0fe882b77e02e714ecf8c8c970105693ece8fe62
end
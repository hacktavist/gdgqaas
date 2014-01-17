require 'sinatra'
require 'shotgun'

###########################
######Random quotes########
###########################

def quote_gen(name)
  nic_quote_array = ["FUCKING LOGIC!!!", "How do you feel about assisted suicide...cuz that is what you are doing to me!"];
  ben_quote_array = ["I want to see your console"];
  rick_quote_array = ["Mo' money", "Blah blah"];
  mcg_quote_array = ["GFY", "Something about killing somebody"];
  brandon_quote_array = ["Sucker!", "High five!"];
  keith_quote_array = ["Is the upgrade done yet?", "They are paying us more money!"];
  mike_quote_array = ["Can I kill them?", "FUCK THAT!", "Hell no"];
  name = name.downcase;


  if(name == "nic")
    quote = nic_quote_array.sample;
  elsif (name == "ben")
    quote = sample ben_quote_array.sample;
  elsif (name == "rick")
    quote = rick_quote_array.sample;
  elsif (name == "mcgraw")
    quote = mcg_quote_array.sample;
  elsif (name == "brandon")
    quote = brandon_quote_array.sample;
  elsif (name == "keith")
    quote = keith_quote_array.sample;
  elsif (name == "mike")
    quote = mike_quote_array.sample;
  else
    quote = "That beeotch don't work here";
  end

  return quote;
end

###info route###
get '/' do
  "Enter a name of an employee after the forward slash to see a random quote from the person";
end


###quote route for a name###

get '/:name' do
  rand_quote = quote_gen(params[:name]);
  erb :quote, :locals => {:quote => rand_quote}
end

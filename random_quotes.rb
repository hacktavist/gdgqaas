require 'sinatra'
require 'shotgun'

###########################
######Random quotes########
###########################

def quote_gen(name)
  nic_quote_array = ["FUCKING LOGIC!!!"];
  ben_quote_array = ["I want to see your console"];
  rick_quote_array = ["Mo' money", "Blah blah"];
  name = name.downcase;


  if(name == "nic")
    quote = nic_quote_array.sample;
  elsif (name == "ben")
    quote = sample ben_quote_array.sample;
  elsif (name == "rick")
    quote = rick_quote_array.sample;
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

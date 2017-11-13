# all
get '/spells' do
  @spells = Spell.all
  erb :'spells/index'
end

# new
get '/spells/new' do
  @spell = Spell.new
  erb :'spells/new'
end

# create
post '/spells' do
  @spell = Spell.create(params[:spell])
  redirect "/spells"
end

# show
get '/spells/:id' do
  @spell = Spell.find(params[:id])
  erb :'spells/show'
end

# edit
get '/spells/:id/edit' do
  @spell = Spell.find(params[:id])
  erb :'spells/edit'
end

# update w/ patch
patch '/spells/:id' do
  @spell = Spell.find(params[:id])
  @spell.update(params[:spell])
  redirect "/spells/#{@spell.id}"
end

# update w/ put
put '/spells/:id' do
  @spell = Spell.find(params[:id])
  @spell = Spell.update(params[:spell])
  redirect "/spells/#{@spell.id}"
end

# delete
delete '/spells/:id' do
  @spell = Spell.find(params[:id]).destroy
  redirect "/spells"
end

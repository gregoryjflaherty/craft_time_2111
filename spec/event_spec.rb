require './lib/craft'
require './lib/event'
require './lib/person'



RSpec.describe do Event
  it 'exists' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    event = Event.new("Carla's Craft Connection", [craft], [person])
    expect(event).to be_an_instance_of(Event)
  end

  it 'has a name' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    event = Event.new("Carla's Craft Connection", [craft], [person])
    expect(event.name).to eq("Carla's Craft Connection")
  end

  it 'has crafts' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    event = Event.new("Carla's Craft Connection", [craft], [person])
    expect(event.crafts).to eq([craft])
  end

  it 'has attendees' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    event = Event.new("Carla's Craft Connection", [craft], [person])
    expect(event.attendees).to eq([person])
  end
end

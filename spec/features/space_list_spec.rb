feature 'Display spaces' do
  let(:name){'MY SPACE'}
  let(:description){'description'}
  let(:price){'12.11'}
  let(:date){'2016-05-01'}

  scenario 'shows the name of the space' do
    create_database_space(name,description,price,date)
    named_signup
    visit '/spaces'
    expect(page).to have_content('MY SPACE')
  end

  scenario 'shows the name of the host' do
    create_database_space(name,description,price,date)
    named_signup
    visit '/spaces'
    expect(page).to have_content('town_girl')
  end

  scenario 'show only spaces that are not booked' do
    # host = db_create_user("dude","d@m.com","dude","t")
    # guest = db_create_user("bro","b@m.com","bro","s")
    # space_one = db_create_space("first house","pretty",10.44,Date.parse("11 may 2016"),host.id)
    # space_two = db_create_space("second house","nice",12.44,Date.parse("11 may 2016"),host.id)
    # db_create_booking(space_one.id,host.id,guest.id,"confirmed",Date.parse("11 may 2016"),15.22)
    # p Booking.first
    #
    # expect(page).to have_content()
  end

  scenario 'does not show a space if not available' do

  end

  scenario 'guest can filter listing by date' do

  end

end

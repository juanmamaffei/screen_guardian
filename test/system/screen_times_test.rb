require 'application_system_test_case'

class ScreenTimesTest < ApplicationSystemTestCase
  setup do
    @screen_time = screen_times(:one)
  end

  test 'visiting the index' do
    visit screen_times_url
    assert_selector 'h1', text: 'Screen times'
  end

  test 'should create screen time' do
    visit screen_times_url
    click_on 'New screen time'

    fill_in 'App name', with: @screen_time.app_name
    fill_in 'Duration', with: @screen_time.duration
    fill_in 'Screen type', with: @screen_time.screen_type
    click_on 'Create Screen time'

    assert_text 'Screen time was successfully created'
    click_on 'Back'
  end

  test 'should update Screen time' do
    visit screen_time_url(@screen_time)
    click_on 'Edit this screen time', match: :first

    fill_in 'App name', with: @screen_time.app_name
    fill_in 'Duration', with: @screen_time.duration
    fill_in 'Screen type', with: @screen_time.screen_type
    click_on 'Update Screen time'

    assert_text 'Screen time was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Screen time' do
    visit screen_time_url(@screen_time)
    click_on 'Destroy this screen time', match: :first

    assert_text 'Screen time was successfully destroyed'
  end
end

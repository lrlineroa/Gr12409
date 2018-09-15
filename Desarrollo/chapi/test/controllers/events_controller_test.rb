require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url, as: :json
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { authorized_by: @event.authorized_by, datetime_end: @event.datetime_end, datetime_start: @event.datetime_start, description: @event.description, event_points: @event.event_points, geofence: @event.geofence, name: @event.name, place: @event.place, requested_by: @event.requested_by, season_id: @event.season_id, state: @event.state } }, as: :json
    end

    assert_response 201
  end

  test "should show event" do
    get event_url(@event), as: :json
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { authorized_by: @event.authorized_by, datetime_end: @event.datetime_end, datetime_start: @event.datetime_start, description: @event.description, event_points: @event.event_points, geofence: @event.geofence, name: @event.name, place: @event.place, requested_by: @event.requested_by, season_id: @event.season_id, state: @event.state } }, as: :json
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event), as: :json
    end

    assert_response 204
  end
end

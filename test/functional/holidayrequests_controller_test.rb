require 'test_functional'
require 'test_helper'

class HolidayrequestsControllerTest < Test::Functional::TestCase

def test_should_load_index
	get :index
	#assert_response :success
	#assert_not_nil assigns(:holidayrequests)
  end
  end

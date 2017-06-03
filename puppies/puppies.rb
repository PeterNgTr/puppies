require_relative 'adoption_helper'

require 'rubygems'
require 'watir-webdriver'
include AdoptionHelper

goto_the_puppy_adoption_site

adopt_puppy_number(1)

continue_adopting_puppies

adopt_puppy_number(2)

checkout_with('Cheezy', '123MainSt', 'cheezy@foo.com', 'Check')

verify_page_contains('Thank you for adopting a puppy!')
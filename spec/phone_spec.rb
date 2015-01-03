require 'phone'

class PhoneWrapper
  include Phone
end

describe Phone do

  let(:phone){PhoneWrapper.new}
end
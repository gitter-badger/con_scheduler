class User < ActiveRecord::Base
  # Since Postgresql defaults to case-sensitive inserts and lookups, we want
  # to make sure the email is always lowercase to avoid duplicate email
  # addresses.
  def email=(value)
    write_attribute(:email, value.to_s.downcase)
  end
end
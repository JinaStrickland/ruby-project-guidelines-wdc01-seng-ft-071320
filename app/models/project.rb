class Project < ActiveRecord::Base

  belongs_to :designer
  belongs_to :client

end
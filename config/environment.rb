# Load the rails application
require File.expand_path('../application', __FILE__)

# S3 Vars
ENV['S3_KEY']='AKIAJBXRJIMPGLI3EXIA'
ENV['S3_SECRET']='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'
ENV['S3_BUCKET']='childrens-national-mena'


# Initialize the rails application
Mena::Application.initialize!

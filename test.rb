require 'aws-sdk-s3'  # v2: require 'aws-sdk'

Aws.config.update({
   credentials: Aws::Credentials.new(ENV["AWS_ACCESS_KEY_ID"], ENV["AWS_SECRET_ACCESS_KEY"])
})
      
s3 = Aws::S3::Resource.new(region: 'us-east-1')

file = '/Users/andrewrichards/Desktop/file.rtf'
bucket = 'minerva-dev-images'
      
# Get just the file name
name = File.basename(file)

# Create the object to upload
obj = s3.bucket(bucket).object(name)

# Upload it      
obj.upload_file(file)
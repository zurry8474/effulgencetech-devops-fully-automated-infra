provider "aws" {
  region = "us-west-2"
  profile = "default"
  access_key              = "${env.AWS_ACCESS_KEY_ID}" 
  secret_key              = "${env.AWS_SECRET_ACCESS_KEY}"
  # profile = "effulgencetech"
}
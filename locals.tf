locals {
  common_tags={
    company = "Effulgencetech"
    owner = "Effulgencetech DevOps Team"
    team-email = "info@effulgencetech.com"
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())    
  }
 
}
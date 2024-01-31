#THIS IS FOR SSH KEY
locals {
  INST-KEY-PAIR = {
    Name = "DAY-KEY"
  }
}

locals {
  INST-PUB-KEY = {
    Name = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDbfBiOWAXVijUydGADDc/Oa00P52YXy138A6pcPp82Jf3nH9raccAMklf+SiwFRJoDD+CF4paZqGqLIV5Bk1O7Rw1CS2tjOAWvBZkhDIRfwZvivttKonk1ymThLqOyFco5oCi9/BJ6uaTH3+acu6ZeKjJBr6GrRaA0P+16KAX58nUZpYmhvqj7RY/0+kZcErBQvERI8bkkpWv8PMdyvZDkFKYUdnBYFP3TdPjk4HwYB1Cq7ILS2lE1cjDLYTgKQAbtYNOrMSPfyNZDVJwJ4uQilcw4Qyd8fnrkiYE1JEHaCi5RZr5b2IV4+3t16p9EAtzjj7aIFu2UNKmA9RgRjmljs5QhxesR1mIw17l6YWEVlPS9ohy2EhaFbThhKFXsFW0i8C6+OT3vfKAy56P5mNpHOfaA25Nan3b1V70q9prxF7JIN9yOrUGn7BY6EmthncGvkKEmAlvGubkbVp6nnonD9tjmM0LTOzGulyo2zhzBIFG+rrd5F94JG4WkEw0Veis="
  }
}
#THIS IS FOR EC2-INSTANCE
locals {
  INST-AMI-ID = {
    Name = "ami-00952f27cf14db9cd"
  }
}

locals {
  INST-TYPE = {
    Name = "t2.micro"
  }
}

locals {
  INST-NAME = {
    Name = "WEBPAGE"
  }
}
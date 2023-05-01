resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }
  
  byte_length = 8
}

output "random" {
  value = random_id.random.hex
}

module "hello" {
  source  = "app.terraform.io/ILM_Demo_Space/hello/random"
  version = "6.0.0"
  hellos = {
    hello = "hello1"
    second_hello = "hello2"
  }
  some_key = "random_key"
}

resource "local_file" "animal" {
  filename = "animal.txt"
  content  = var.content

  lifecycle {
    prevent_destroy = true
  }
}

resource "local_file" "fruits" {
  filename = "fruits.txt"
  content  = "Grapes"
  file_permission = "0700"

  lifecycle {
    create_before_destroy = true
  }
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}

resource "random_integer" "number" {
  min = 1
  max = 9
}

resource "local_file" "pet" {
  filename = "pet.txt"
  content  = "My favorite pet is ${random_pet.my-pet.id}"
}

output "pet-name" {
  value       = random_pet.my-pet.id
  description = "nothing"
}
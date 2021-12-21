resource "local_file" "animal" {
  filename = "animal.txt"
  content = var.content
}

resource "local_file" "fruits" {
  filename = "fruits.txt"
  content = "Grapes"
}

resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}

resource "random_integer" "number" {
  min = 1
  max = 9
}
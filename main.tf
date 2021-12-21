resource "local_file" "animal" {
  filename = "animal.txt"
  content = "monkey"
  file_permission = "0700" #force replacement
}
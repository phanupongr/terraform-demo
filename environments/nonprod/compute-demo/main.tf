terraform {
  required_version = ">= 1.10"
}

resource "local_file" "default" {
  file_permission = "0644"
  filename        = "hello.txt"

  # You can store the template in a file and use the templatefile function for
  # more modularity, if you prefer, instead of storing the template inline as
  # we do here.
  content = <<-EOT
  hello
  EOT
}
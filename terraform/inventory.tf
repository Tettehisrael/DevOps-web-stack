resource "local_file" "inventory" {
  content = templatefile("../ansible/inventory",
    {
      web_ip = module.ec2.instance_public_ip
    }
  )
  filename = "../ansible/inventory"
}

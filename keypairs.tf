resource "aws_key_pair" "local_var_key" { # the referrence in the tf file
  key_name   = "richardx"                 # the real key name inside AWS
  public_key = file(var.PUB_KEY_PATH)     # the public key content 
}

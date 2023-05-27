variable "pub_key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCt86OuCXbzhoJs3yAwou8uvg95p05GMFdLe6HcA7DR2Budx1raTGOxqO7WRCbZ1OXmbdRUgJwfUmeqGM/nfbB6WjB6MmyLjaiKvTd8IahWar8/0umbsumjRMJr9OUMYIIHuV8wdHurlLaIYr8O6Eal0sZGy4+bzcv1u/zXZ0qFOb16pasHipzcNtg9Z3fbyD8iXfUefJ2iWhq1PS646RpTEBCMWaz3o7bPbn7Ja7mxNKmsM8+7757qEUquqycuGCEivD85i0Taunjrz+OxD6DxhIIdGcXPigJIulI0hIPQE1fI4J7sFlbr/TGgtJS81sYBFX66WePehlOX11TTgd68RMtIEr8MQzhPxv1uCls0KFCBfb2dvSdStUej4UPYrJY/B8DQcLO6Rb6XB5J+J3tsogsPYGS1rdn7PZ8MuadFywOt6c5pvycotJzYwn6gNZElNEZJeTHs4SCaCoHCXZ5At1C2h/ii1xbPGxnmkZHV1QLkJ1yfsc8jbqCA07dzTAk= schne@DESKTOP-E8OC566"
}

variable "region" {
  description = "region to create my resources"
  type = string
  default = "us-east-1"
  
}

variable "ami" {
  description = "ami to use"
  type = string
default = "ami-007855ac798b5175e"

}

variable "instance-type" {
  description = "instance type"
type = string
default =  "t2.micro"
}
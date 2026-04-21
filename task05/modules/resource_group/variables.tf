variable "name" {
  type        = string
  description = "Name of the Resource Group"

}

variable "location" {
  type        = string
  description = "Location of the Resource Group"

}

variable "tags" {
  type        = map(string)
  description = "Tag named Creator to be applied to all resources"

}


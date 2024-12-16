

variable "Fabric-Project" {
  type        = string
  description = "Metal-Project"
  default     = "f1a596ed-d24a-497c-92a8-44e0923cee62"
}
variable "metro1" {
  type        = string
  description = "Equinix metro code"
  default     = "AM"
}
variable "account-number" {
  type        = string
  description = "account-number"
  default     = "663337"
}
variable "device-type" {
  type        = string
  description = "Device type code"
  default     = "C8000V"
}
variable "Pack-code" {
  type        = string
  description = "Package Code"
  default     = "network-essentials"
}
variable "ACL-ID" {
  type        = string
  description = "ACL ID"
  default     = "a64f7245-5746-4ecb-a87a-410afd7db913"
}
variable "core" {
  type        = string
  description = "# cores"
  default     = 2
}
variable "term" {
  type        = string
  description = "term lenght"
  default     = 1
}
variable "notification" {
  type        = string
  description = "notification email"
  default     = "mariaalejandra.mejia@eu.equinix.com"
}





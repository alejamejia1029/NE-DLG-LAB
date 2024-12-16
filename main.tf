terraform {
  required_providers {
    equinix = {
      source = "equinix/equinix"
    }
  }
}

resource "equinix_network_device" "c8kv-ha" {
name            = "amejia-c8000-1"
metro_code      = var.metro1
type_code       = var.device-type
self_managed    = true
byol            = true
package_code    = var.Pack-code
notifications   = [var.notification]
hostname        = "amejia-c8000-1"
account_number  = var.account-number
version         = "17.14.01a"
core_count      = var.core
term_length     = var.term
additional_bandwidth = 0
project_id      = var.Fabric-Project
  ssh_key {
   username = "amejia"
}
acl_template_id = var.ACL-ID
 
secondary_device {
   name            =  "amejia-c8000-2"
   metro_code      = var.metro1
   hostname        = "amejia-c8000-2"
   notifications   = [var.notification]
   account_number  = var.account-number
   acl_template_id = var.ACL-ID
}  
}
resource "equinix_network_device_link" "DLG" {
  name   = "amejia-DLG-AM"
  project_id  = var.Fabric-Project
  device {
    id           = equinix_network_device.c8kv-ha.uuid
    interface_id = 4
  }
  device {
    id           = equinix_network_device.c8kv-ha.secondary_device[0].uuid
    interface_id = 4
  }
  metro_link {
    account_number  = var.account-number
    metro_code  = var.metro1
    throughput      = "10"
    throughput_unit = "Mbps"
  }
    metro_link {
    account_number  = var.account-number
    metro_code  = var.metro1
    throughput      = "10"
    throughput_unit = "Mbps"
  }
}
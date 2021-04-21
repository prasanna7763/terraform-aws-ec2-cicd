variable "instance_type" {   
    type = string
    description = "instance_type value"
    default = "t3.micro"
    } 

variable "key_name" {   
    type = string
    description = "Pem file's key value"
    default = "linuxprKP"
    } 

variable "root_block_device_volume_size" {   
    type = number
    description = "Root block device's Volume size value"
    default = 20
    } 

variable "root_block_device_volume_type" {   
    type = string
    description = "Root block device's Volume type value"
    default = "gp2"
    }     

variable "server_name" {   
    type = string
    description = "server name"
    
    }    

variable "subnet_id" {   
    type = string
    description = "server name"
    
    }    
             
variable "sg_ids" {   
    type = list(string)
    description = "server name"
    
    }   

variable "user_data_base64" {   
    type = string
    description = "server name"
    default = ""
    }   

  

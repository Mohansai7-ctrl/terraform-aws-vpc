variable "vpc_cidr" {
    #default = {}
}

variable "enabling_dns_hostnames" {
    default = true
}

variable "common_tags" {
    default = {}
}

variable "project_name" {
    type = string                   #If nothing provided means, it is mandatory and should be provide in child module variables.tf as value passing

}

variable "environment" {
    type = string

}

variable "vpc_tags" {
    default = {}
}

variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "User has to provide 2 respective subnet cidr blocks"
    }
    
}
variable "public_subnet_tags" {
    default = {}
}


variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "User has to provide 2 respective subnet cidr blocks"
    }

}
variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "User has to provide 2 respective subnet cidr blocks"
    }
}
variable "database_subnet_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}




variable "eip_tags" {
    default = {

    }
}

variable "nat_tags" {
    default = {
        
    }
}

variable "subnet_group_tags" {
    default = {}
}

#By default, we are not allowing the peering connection by disabling the default as below, but if user wants then that can be provided by means of user module values

variable "is_peering_required" {
    type = bool
    default = false
}

variable "peer_tags" {
    default = {}
}
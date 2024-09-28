data "aws_availability_zones" "available" {
    state = "available"  #have to give state in quoted ""
}

#These below 2 details are related to default vpc with which peer connection will be done.
data "aws_vpc" "default" {
    default = true

}

data "aws_route_table" "main" {
    vpc_id = data.aws_vpc.default.id
    filter {  #Here from entire output of default vpc route_tables, we are filtering for main route_table only
        name = "association.main"  
        values = ["true"]
    }

}
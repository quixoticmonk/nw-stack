output "vpc_id"{
    type=string
    value="dummy"
}

output "test_out"{
    type=string
    value=component.vpc.test_out
}
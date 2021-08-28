# Output - For Loop with List
output "for_output_list" {
  description = "For Loop with List"
  value = [for y in aws_instance.web: y.public_ip]
}

# Output - For Loop with Map
output "for_output_map1" {
  description = "For Loop with Map"
  value = {for x in aws_instance.web: x.id => x.private_ip}
}

# Output - For Loop with Map Advanced
output "for_output_map2" {
  description = "For Loop with Map - Advanced"
  value = {for a, z in aws_instance.web: a => z.public_dns}
}

# Output Legacy Splat Operator (Legacy) - Returns the List

output "legacy_splat_instance_privateIP" {
  description = "Legacy Splat Operator"
  value = aws_instance.web.*.private_ip
}


# Output Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicIP" {
  description = "Generalized latest Splat Operator"
  value = aws_instance.web[*].public_ip
}
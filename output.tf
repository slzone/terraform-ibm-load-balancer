output "load_balancer" {
  description = "The load balancer name"
  value       = data.ibm_is_lb.loadbalancer.name
}
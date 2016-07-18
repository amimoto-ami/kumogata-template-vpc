# VPC Template example for Kumogata2

It creates below resources.

- VPC
- 2-4 Subnets (depends on Region)
- Internet Gateway
- Routing Table and association.


## Validate

```
kumogata2 validate vpc_example.rb 
```


## Create

```
kumogata2 create vpc_example.rb vpc-example


...

Outputs:
{
  "VPCId": "vpc-xxxxxxxx"
}
```



_include 'resources/vpc/subnets.rb'
_include 'resources/vpc/route_table.rb'
_include 'resources/vpc/association_routetable.rb'
_include 'resources/vpc/internet_gateway.rb'
_include 'resources/vpc/route.rb'
VPC do
  Type "AWS::EC2::VPC"
  Properties do
    CidrBlock "10.0.0.0/16"
    InstanceTenancy "default"
    EnableDnsSupport "true"
    EnableDnsHostnames "true"
    Tags [
      _{
        Key "Name"
        Value do
          Ref "AWS::StackName"
        end
      },
      _{
        Key "Application"
        Value do
          Ref "AWS::StackName"
        end
      }
    ]
  end
end

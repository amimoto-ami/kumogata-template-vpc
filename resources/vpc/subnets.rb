SubnetAZOne do
  Type "AWS::EC2::Subnet"
  Properties do
    CidrBlock "10.0.0.0/22"
    AvailabilityZone do
      Fn__Select [
        "0",
        _{ Fn__GetAZs _{ Ref "AWS::Region" } }
      ]
    end
    MapPublicIpOnLaunch "true"
    VpcId do
      Ref "VPC"
    end
    Tags [
      _{
        Key "Name"
        Value do
          Ref "AWS::StackName"
        end
      }
    ]
  end
end

SubnetAZTwo do
  Type "AWS::EC2::Subnet"
  Properties do
    CidrBlock "10.0.4.0/22"
    AvailabilityZone do
      Fn__Select [
        "1",
        _{ Fn__GetAZs _{ Ref "AWS::Region" } }
      ]
    end
    MapPublicIpOnLaunch "true"
    VpcId do
      Ref "VPC"
    end
    Tags [
      _{
        Key "Name"
        Value do
          Ref "AWS::StackName"
        end
      }
    ]
  end
end

SubnetAZThree do
  Type "AWS::EC2::Subnet"
  Condition "HasThirdAZ"
  Properties do
    CidrBlock "10.0.8.0/22"
    AvailabilityZone do
      Fn__Select [
        "2",
        _{ Fn__GetAZs _{ Ref "AWS::Region" } }
      ]
    end
    MapPublicIpOnLaunch "true"
    VpcId do
      Ref "VPC"
    end
    Tags [
      _{
        Key "Name"
        Value do
          Ref "AWS::StackName"
        end
      }
    ]
  end
end

SubnetAZFour do
  Type "AWS::EC2::Subnet"
  Condition "HasFourthAZ"
  Properties do
    CidrBlock "10.0.12.0/22"
    AvailabilityZone do
      Fn__Select [
        "3",
        _{ Fn__GetAZs _{ Ref "AWS::Region" } }
      ]
    end
    MapPublicIpOnLaunch "true"
    VpcId do
      Ref "VPC"
    end
    Tags [
      _{
        Key "Name"
        Value do
          Ref "AWS::StackName"
        end
      }
    ]
  end
end

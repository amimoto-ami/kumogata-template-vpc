AssociationRtToAZOne do
  Type "AWS::EC2::SubnetRouteTableAssociation"
  Properties do
    RouteTableId do
      Ref "RouteTable"
    end
    SubnetId do
      Ref "SubnetAZOne"
    end
  end
end

AssociationRtToAZTwo do
  Type "AWS::EC2::SubnetRouteTableAssociation"
  Properties do
    RouteTableId do
      Ref "RouteTable"
    end
    SubnetId do
      Ref "SubnetAZTwo"
    end
  end
end

AssociationRtToAZThree do
  Type "AWS::EC2::SubnetRouteTableAssociation"
  Condition "HasThirdAZ"
  Properties do
    RouteTableId do
      Ref "RouteTable"
    end
    SubnetId do
      Ref "SubnetAZThree"
    end
  end
end

AssociationRtToAZFour do
  Type "AWS::EC2::SubnetRouteTableAssociation"
  Condition "HasFourthAZ"
  Properties do
    RouteTableId do
      Ref "RouteTable"
    end
    SubnetId do
      Ref "SubnetAZFour"
    end
  end
end

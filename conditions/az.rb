IsEuWestOne do
  Fn__Equals [ _{Ref "AWS::Region"}, "eu-west-1" ]
end
IsApSouthEastTwo do
  Fn__Equals [ _{Ref "AWS::Region"}, "ap-southeast-2" ]
end
IsUsEastOne do
  Fn__Equals [ _{Ref "AWS::Region"}, "us-east-1" ]
end
IsSaEastOne do
  Fn__Equals [ _{Ref "AWS::Region"}, "sa-east-1" ]
end
IsUsWestTwo do
  Fn__Equals [ _{Ref "AWS::Region"}, "us-west-2" ]
end


HasThirdAZ do
  Fn__Or [
    _{Condition "IsEuWestOne"},
    _{Condition "IsApSouthEastTwo"},
    _{Condition "IsUsEastOne"},
    _{Condition "IsSaEastOne"},
    _{Condition "IsUsWestTwo"},
  ]
end

HasFourthAZ do
  Condition "IsUsEastOne"
  #  Fn__Or [
  # _{Condition "IsUsEastOne"},
  #  ]
end


template do
  AWSTemplateFormatVersion "2010-09-09"
  Description (<<-EOS).undent
  Kumogata2 VPC Example
  EOS

  Metadata do
  end

  Conditions do
    _include 'conditions/az.rb'
  end

  Mappings do
  end

  Parameters do
  end

  Resources do
    _include 'resources/vpc.rb'
  end

  Outputs do
    _include 'outputs/vpc.rb'
  end
end



-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateIamInstanceProfile where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateIamInstanceProfile. See
-- 'ec2LaunchTemplateIamInstanceProfile' for a more convenient constructor.
data EC2LaunchTemplateIamInstanceProfile =
  EC2LaunchTemplateIamInstanceProfile
  { _eC2LaunchTemplateIamInstanceProfileArn :: Maybe (Val Text)
  , _eC2LaunchTemplateIamInstanceProfileName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateIamInstanceProfile where
  toJSON EC2LaunchTemplateIamInstanceProfile{..} =
    object $
    catMaybes
    [ fmap (("Arn",) . toJSON) _eC2LaunchTemplateIamInstanceProfileArn
    , fmap (("Name",) . toJSON) _eC2LaunchTemplateIamInstanceProfileName
    ]

-- | Constructor for 'EC2LaunchTemplateIamInstanceProfile' containing required
-- fields as arguments.
ec2LaunchTemplateIamInstanceProfile
  :: EC2LaunchTemplateIamInstanceProfile
ec2LaunchTemplateIamInstanceProfile  =
  EC2LaunchTemplateIamInstanceProfile
  { _eC2LaunchTemplateIamInstanceProfileArn = Nothing
  , _eC2LaunchTemplateIamInstanceProfileName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile.html#cfn-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile-arn
ecltiipArn :: Lens' EC2LaunchTemplateIamInstanceProfile (Maybe (Val Text))
ecltiipArn = lens _eC2LaunchTemplateIamInstanceProfileArn (\s a -> s { _eC2LaunchTemplateIamInstanceProfileArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile.html#cfn-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile-name
ecltiipName :: Lens' EC2LaunchTemplateIamInstanceProfile (Maybe (Val Text))
ecltiipName = lens _eC2LaunchTemplateIamInstanceProfileName (\s a -> s { _eC2LaunchTemplateIamInstanceProfileName = a })

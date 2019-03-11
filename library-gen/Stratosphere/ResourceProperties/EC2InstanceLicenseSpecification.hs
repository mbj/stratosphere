{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html

module Stratosphere.ResourceProperties.EC2InstanceLicenseSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceLicenseSpecification. See
-- 'ec2InstanceLicenseSpecification' for a more convenient constructor.
data EC2InstanceLicenseSpecification =
  EC2InstanceLicenseSpecification
  { _eC2InstanceLicenseSpecificationLicenseConfigurationArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2InstanceLicenseSpecification where
  toJSON EC2InstanceLicenseSpecification{..} =
    object $
    catMaybes
    [ (Just . ("LicenseConfigurationArn",) . toJSON) _eC2InstanceLicenseSpecificationLicenseConfigurationArn
    ]

-- | Constructor for 'EC2InstanceLicenseSpecification' containing required
-- fields as arguments.
ec2InstanceLicenseSpecification
  :: Val Text -- ^ 'ecilsLicenseConfigurationArn'
  -> EC2InstanceLicenseSpecification
ec2InstanceLicenseSpecification licenseConfigurationArnarg =
  EC2InstanceLicenseSpecification
  { _eC2InstanceLicenseSpecificationLicenseConfigurationArn = licenseConfigurationArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html#cfn-ec2-instance-licensespecification-licenseconfigurationarn
ecilsLicenseConfigurationArn :: Lens' EC2InstanceLicenseSpecification (Val Text)
ecilsLicenseConfigurationArn = lens _eC2InstanceLicenseSpecificationLicenseConfigurationArn (\s a -> s { _eC2InstanceLicenseSpecificationLicenseConfigurationArn = a })

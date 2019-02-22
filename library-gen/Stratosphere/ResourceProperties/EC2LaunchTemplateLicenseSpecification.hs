{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-licensespecification.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateLicenseSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateLicenseSpecification. See
-- 'ec2LaunchTemplateLicenseSpecification' for a more convenient
-- constructor.
data EC2LaunchTemplateLicenseSpecification =
  EC2LaunchTemplateLicenseSpecification
  { _eC2LaunchTemplateLicenseSpecificationLicenseConfigurationArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateLicenseSpecification where
  toJSON EC2LaunchTemplateLicenseSpecification{..} =
    object $
    catMaybes
    [ fmap (("LicenseConfigurationArn",) . toJSON) _eC2LaunchTemplateLicenseSpecificationLicenseConfigurationArn
    ]

instance FromJSON EC2LaunchTemplateLicenseSpecification where
  parseJSON (Object obj) =
    EC2LaunchTemplateLicenseSpecification <$>
      (obj .:? "LicenseConfigurationArn")
  parseJSON _ = mempty

-- | Constructor for 'EC2LaunchTemplateLicenseSpecification' containing
-- required fields as arguments.
ec2LaunchTemplateLicenseSpecification
  :: EC2LaunchTemplateLicenseSpecification
ec2LaunchTemplateLicenseSpecification  =
  EC2LaunchTemplateLicenseSpecification
  { _eC2LaunchTemplateLicenseSpecificationLicenseConfigurationArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-licensespecification.html#cfn-ec2-launchtemplate-licensespecification-licenseconfigurationarn
ecltlsLicenseConfigurationArn :: Lens' EC2LaunchTemplateLicenseSpecification (Maybe (Val Text))
ecltlsLicenseConfigurationArn = lens _eC2LaunchTemplateLicenseSpecificationLicenseConfigurationArn (\s a -> s { _eC2LaunchTemplateLicenseSpecificationLicenseConfigurationArn = a })

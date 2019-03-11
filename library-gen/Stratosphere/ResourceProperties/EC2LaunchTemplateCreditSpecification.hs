{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-creditspecification.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateCreditSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateCreditSpecification. See
-- 'ec2LaunchTemplateCreditSpecification' for a more convenient constructor.
data EC2LaunchTemplateCreditSpecification =
  EC2LaunchTemplateCreditSpecification
  { _eC2LaunchTemplateCreditSpecificationCpuCredits :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateCreditSpecification where
  toJSON EC2LaunchTemplateCreditSpecification{..} =
    object $
    catMaybes
    [ fmap (("CpuCredits",) . toJSON) _eC2LaunchTemplateCreditSpecificationCpuCredits
    ]

-- | Constructor for 'EC2LaunchTemplateCreditSpecification' containing
-- required fields as arguments.
ec2LaunchTemplateCreditSpecification
  :: EC2LaunchTemplateCreditSpecification
ec2LaunchTemplateCreditSpecification  =
  EC2LaunchTemplateCreditSpecification
  { _eC2LaunchTemplateCreditSpecificationCpuCredits = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-creditspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-creditspecification-cpucredits
ecltcsCpuCredits :: Lens' EC2LaunchTemplateCreditSpecification (Maybe (Val Text))
ecltcsCpuCredits = lens _eC2LaunchTemplateCreditSpecificationCpuCredits (\s a -> s { _eC2LaunchTemplateCreditSpecificationCpuCredits = a })

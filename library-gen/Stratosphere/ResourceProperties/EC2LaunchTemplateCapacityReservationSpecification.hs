{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateCapacityReservationSpecification where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2LaunchTemplateCapacityReservationTarget

-- | Full data type definition for
-- EC2LaunchTemplateCapacityReservationSpecification. See
-- 'ec2LaunchTemplateCapacityReservationSpecification' for a more convenient
-- constructor.
data EC2LaunchTemplateCapacityReservationSpecification =
  EC2LaunchTemplateCapacityReservationSpecification
  { _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationPreference :: Maybe (Val Text)
  , _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget :: Maybe EC2LaunchTemplateCapacityReservationTarget
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateCapacityReservationSpecification where
  toJSON EC2LaunchTemplateCapacityReservationSpecification{..} =
    object $
    catMaybes
    [ fmap (("CapacityReservationPreference",) . toJSON) _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationPreference
    , fmap (("CapacityReservationTarget",) . toJSON) _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget
    ]

-- | Constructor for 'EC2LaunchTemplateCapacityReservationSpecification'
-- containing required fields as arguments.
ec2LaunchTemplateCapacityReservationSpecification
  :: EC2LaunchTemplateCapacityReservationSpecification
ec2LaunchTemplateCapacityReservationSpecification  =
  EC2LaunchTemplateCapacityReservationSpecification
  { _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationPreference = Nothing
  , _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationpreference
ecltcrsCapacityReservationPreference :: Lens' EC2LaunchTemplateCapacityReservationSpecification (Maybe (Val Text))
ecltcrsCapacityReservationPreference = lens _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationPreference (\s a -> s { _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationPreference = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationtarget
ecltcrsCapacityReservationTarget :: Lens' EC2LaunchTemplateCapacityReservationSpecification (Maybe EC2LaunchTemplateCapacityReservationTarget)
ecltcrsCapacityReservationTarget = lens _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget (\s a -> s { _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget = a })

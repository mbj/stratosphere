{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
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
  { _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget :: Maybe EC2LaunchTemplateCapacityReservationTarget
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateCapacityReservationSpecification where
  toJSON EC2LaunchTemplateCapacityReservationSpecification{..} =
    object $
    catMaybes
    [ fmap (("CapacityReservationTarget",) . toJSON) _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget
    ]

instance FromJSON EC2LaunchTemplateCapacityReservationSpecification where
  parseJSON (Object obj) =
    EC2LaunchTemplateCapacityReservationSpecification <$>
      (obj .:? "CapacityReservationTarget")
  parseJSON _ = mempty

-- | Constructor for 'EC2LaunchTemplateCapacityReservationSpecification'
-- containing required fields as arguments.
ec2LaunchTemplateCapacityReservationSpecification
  :: EC2LaunchTemplateCapacityReservationSpecification
ec2LaunchTemplateCapacityReservationSpecification  =
  EC2LaunchTemplateCapacityReservationSpecification
  { _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationtarget
ecltcrsCapacityReservationTarget :: Lens' EC2LaunchTemplateCapacityReservationSpecification (Maybe EC2LaunchTemplateCapacityReservationTarget)
ecltcrsCapacityReservationTarget = lens _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget (\s a -> s { _eC2LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget = a })

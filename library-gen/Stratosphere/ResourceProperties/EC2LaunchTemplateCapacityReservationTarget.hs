{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-capacityreservationtarget.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateCapacityReservationTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateCapacityReservationTarget.
-- See 'ec2LaunchTemplateCapacityReservationTarget' for a more convenient
-- constructor.
data EC2LaunchTemplateCapacityReservationTarget =
  EC2LaunchTemplateCapacityReservationTarget
  { _eC2LaunchTemplateCapacityReservationTargetCapacityReservationId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateCapacityReservationTarget where
  toJSON EC2LaunchTemplateCapacityReservationTarget{..} =
    object $
    catMaybes
    [ fmap (("CapacityReservationId",) . toJSON) _eC2LaunchTemplateCapacityReservationTargetCapacityReservationId
    ]

instance FromJSON EC2LaunchTemplateCapacityReservationTarget where
  parseJSON (Object obj) =
    EC2LaunchTemplateCapacityReservationTarget <$>
      (obj .:? "CapacityReservationId")
  parseJSON _ = mempty

-- | Constructor for 'EC2LaunchTemplateCapacityReservationTarget' containing
-- required fields as arguments.
ec2LaunchTemplateCapacityReservationTarget
  :: EC2LaunchTemplateCapacityReservationTarget
ec2LaunchTemplateCapacityReservationTarget  =
  EC2LaunchTemplateCapacityReservationTarget
  { _eC2LaunchTemplateCapacityReservationTargetCapacityReservationId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-capacityreservationtarget.html#cfn-ec2-launchtemplate-capacityreservationtarget-capacityreservationid
ecltcrtCapacityReservationId :: Lens' EC2LaunchTemplateCapacityReservationTarget (Maybe (Val Text))
ecltcrtCapacityReservationId = lens _eC2LaunchTemplateCapacityReservationTargetCapacityReservationId (\s a -> s { _eC2LaunchTemplateCapacityReservationTargetCapacityReservationId = a })

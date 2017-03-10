{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-placement.html

module Stratosphere.ResourceProperties.EC2SpotFleetPlacement where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetPlacement. See
-- 'ec2SpotFleetPlacement' for a more convenient constructor.
data EC2SpotFleetPlacement =
  EC2SpotFleetPlacement
  { _eC2SpotFleetPlacementAvailabilityZone :: Maybe (Val Text)
  , _eC2SpotFleetPlacementGroupName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetPlacement where
  toJSON EC2SpotFleetPlacement{..} =
    object $
    catMaybes
    [ ("AvailabilityZone" .=) <$> _eC2SpotFleetPlacementAvailabilityZone
    , ("GroupName" .=) <$> _eC2SpotFleetPlacementGroupName
    ]

instance FromJSON EC2SpotFleetPlacement where
  parseJSON (Object obj) =
    EC2SpotFleetPlacement <$>
      obj .:? "AvailabilityZone" <*>
      obj .:? "GroupName"
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetPlacement' containing required fields as
-- arguments.
ec2SpotFleetPlacement
  :: EC2SpotFleetPlacement
ec2SpotFleetPlacement  =
  EC2SpotFleetPlacement
  { _eC2SpotFleetPlacementAvailabilityZone = Nothing
  , _eC2SpotFleetPlacementGroupName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-placement.html#cfn-ec2-spotfleet-placement-availabilityzone
ecsfpAvailabilityZone :: Lens' EC2SpotFleetPlacement (Maybe (Val Text))
ecsfpAvailabilityZone = lens _eC2SpotFleetPlacementAvailabilityZone (\s a -> s { _eC2SpotFleetPlacementAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-placement.html#cfn-ec2-spotfleet-placement-groupname
ecsfpGroupName :: Lens' EC2SpotFleetPlacement (Maybe (Val Text))
ecsfpGroupName = lens _eC2SpotFleetPlacementGroupName (\s a -> s { _eC2SpotFleetPlacementGroupName = a })

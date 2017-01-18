{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-placement.html

module Stratosphere.ResourceProperties.EC2SpotFleetPlacement where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetPlacement. See
-- | 'ec2SpotFleetPlacement' for a more convenient constructor.
data EC2SpotFleetPlacement =
  EC2SpotFleetPlacement
  { _eC2SpotFleetPlacementAvailabilityZone :: Maybe (Val Text)
  , _eC2SpotFleetPlacementGroupName :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON EC2SpotFleetPlacement where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON EC2SpotFleetPlacement where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'EC2SpotFleetPlacement' containing required fields as
-- | arguments.
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

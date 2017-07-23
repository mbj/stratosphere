{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-spotfleet.html

module Stratosphere.Resources.EC2SpotFleet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetRequestConfigData

-- | Full data type definition for EC2SpotFleet. See 'ec2SpotFleet' for a more
-- convenient constructor.
data EC2SpotFleet =
  EC2SpotFleet
  { _eC2SpotFleetSpotFleetRequestConfigData :: EC2SpotFleetSpotFleetRequestConfigData
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleet where
  toJSON EC2SpotFleet{..} =
    object $
    catMaybes
    [ (Just . ("SpotFleetRequestConfigData",) . toJSON) _eC2SpotFleetSpotFleetRequestConfigData
    ]

instance FromJSON EC2SpotFleet where
  parseJSON (Object obj) =
    EC2SpotFleet <$>
      (obj .: "SpotFleetRequestConfigData")
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleet' containing required fields as arguments.
ec2SpotFleet
  :: EC2SpotFleetSpotFleetRequestConfigData -- ^ 'ecsfSpotFleetRequestConfigData'
  -> EC2SpotFleet
ec2SpotFleet spotFleetRequestConfigDataarg =
  EC2SpotFleet
  { _eC2SpotFleetSpotFleetRequestConfigData = spotFleetRequestConfigDataarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-spotfleet.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata
ecsfSpotFleetRequestConfigData :: Lens' EC2SpotFleet EC2SpotFleetSpotFleetRequestConfigData
ecsfSpotFleetRequestConfigData = lens _eC2SpotFleetSpotFleetRequestConfigData (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigData = a })

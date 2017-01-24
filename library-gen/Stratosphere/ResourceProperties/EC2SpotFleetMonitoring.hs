{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-monitoring.html

module Stratosphere.ResourceProperties.EC2SpotFleetMonitoring where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetMonitoring. See
-- | 'ec2SpotFleetMonitoring' for a more convenient constructor.
data EC2SpotFleetMonitoring =
  EC2SpotFleetMonitoring
  { _eC2SpotFleetMonitoringEnabled :: Maybe (Val Bool')
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetMonitoring where
  toJSON EC2SpotFleetMonitoring{..} =
    object
    [ "Enabled" .= _eC2SpotFleetMonitoringEnabled
    ]

instance FromJSON EC2SpotFleetMonitoring where
  parseJSON (Object obj) =
    EC2SpotFleetMonitoring <$>
      obj .: "Enabled"
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetMonitoring' containing required fields as
-- | arguments.
ec2SpotFleetMonitoring
  :: EC2SpotFleetMonitoring
ec2SpotFleetMonitoring  =
  EC2SpotFleetMonitoring
  { _eC2SpotFleetMonitoringEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-monitoring.html#cfn-ec2-spotfleet-monitoring-enabled
ecsfmEnabled :: Lens' EC2SpotFleetMonitoring (Maybe (Val Bool'))
ecsfmEnabled = lens _eC2SpotFleetMonitoringEnabled (\s a -> s { _eC2SpotFleetMonitoringEnabled = a })

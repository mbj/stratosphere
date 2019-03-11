{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-monitoring.html

module Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetMonitoring where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SpotFleetSpotFleetMonitoring. See
-- 'ec2SpotFleetSpotFleetMonitoring' for a more convenient constructor.
data EC2SpotFleetSpotFleetMonitoring =
  EC2SpotFleetSpotFleetMonitoring
  { _eC2SpotFleetSpotFleetMonitoringEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetSpotFleetMonitoring where
  toJSON EC2SpotFleetSpotFleetMonitoring{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON . fmap Bool') _eC2SpotFleetSpotFleetMonitoringEnabled
    ]

-- | Constructor for 'EC2SpotFleetSpotFleetMonitoring' containing required
-- fields as arguments.
ec2SpotFleetSpotFleetMonitoring
  :: EC2SpotFleetSpotFleetMonitoring
ec2SpotFleetSpotFleetMonitoring  =
  EC2SpotFleetSpotFleetMonitoring
  { _eC2SpotFleetSpotFleetMonitoringEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-monitoring.html#cfn-ec2-spotfleet-spotfleetmonitoring-enabled
ecsfsfmEnabled :: Lens' EC2SpotFleetSpotFleetMonitoring (Maybe (Val Bool))
ecsfsfmEnabled = lens _eC2SpotFleetSpotFleetMonitoringEnabled (\s a -> s { _eC2SpotFleetSpotFleetMonitoringEnabled = a })

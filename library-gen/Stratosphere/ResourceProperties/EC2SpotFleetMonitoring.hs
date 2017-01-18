{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-monitoring.html

module Stratosphere.ResourceProperties.EC2SpotFleetMonitoring where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetMonitoring. See
-- | 'ec2SpotFleetMonitoring' for a more convenient constructor.
data EC2SpotFleetMonitoring =
  EC2SpotFleetMonitoring
  { _eC2SpotFleetMonitoringEnabled :: Maybe (Val Bool')
  } deriving (Show, Eq, Generic)

instance ToJSON EC2SpotFleetMonitoring where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON EC2SpotFleetMonitoring where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

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

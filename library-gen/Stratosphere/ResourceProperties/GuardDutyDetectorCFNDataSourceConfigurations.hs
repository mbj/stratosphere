
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html

module Stratosphere.ResourceProperties.GuardDutyDetectorCFNDataSourceConfigurations where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GuardDutyDetectorCFNS3LogsConfiguration

-- | Full data type definition for
-- GuardDutyDetectorCFNDataSourceConfigurations. See
-- 'guardDutyDetectorCFNDataSourceConfigurations' for a more convenient
-- constructor.
data GuardDutyDetectorCFNDataSourceConfigurations =
  GuardDutyDetectorCFNDataSourceConfigurations
  { _guardDutyDetectorCFNDataSourceConfigurationsS3Logs :: Maybe GuardDutyDetectorCFNS3LogsConfiguration
  } deriving (Show, Eq)

instance ToJSON GuardDutyDetectorCFNDataSourceConfigurations where
  toJSON GuardDutyDetectorCFNDataSourceConfigurations{..} =
    object $
    catMaybes
    [ fmap (("S3Logs",) . toJSON) _guardDutyDetectorCFNDataSourceConfigurationsS3Logs
    ]

-- | Constructor for 'GuardDutyDetectorCFNDataSourceConfigurations' containing
-- required fields as arguments.
guardDutyDetectorCFNDataSourceConfigurations
  :: GuardDutyDetectorCFNDataSourceConfigurations
guardDutyDetectorCFNDataSourceConfigurations  =
  GuardDutyDetectorCFNDataSourceConfigurations
  { _guardDutyDetectorCFNDataSourceConfigurationsS3Logs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-s3logs
gddcfndscS3Logs :: Lens' GuardDutyDetectorCFNDataSourceConfigurations (Maybe GuardDutyDetectorCFNS3LogsConfiguration)
gddcfndscS3Logs = lens _guardDutyDetectorCFNDataSourceConfigurationsS3Logs (\s a -> s { _guardDutyDetectorCFNDataSourceConfigurationsS3Logs = a })

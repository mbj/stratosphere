
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfns3logsconfiguration.html

module Stratosphere.ResourceProperties.GuardDutyDetectorCFNS3LogsConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GuardDutyDetectorCFNS3LogsConfiguration.
-- See 'guardDutyDetectorCFNS3LogsConfiguration' for a more convenient
-- constructor.
data GuardDutyDetectorCFNS3LogsConfiguration =
  GuardDutyDetectorCFNS3LogsConfiguration
  { _guardDutyDetectorCFNS3LogsConfigurationEnable :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON GuardDutyDetectorCFNS3LogsConfiguration where
  toJSON GuardDutyDetectorCFNS3LogsConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Enable",) . toJSON) _guardDutyDetectorCFNS3LogsConfigurationEnable
    ]

-- | Constructor for 'GuardDutyDetectorCFNS3LogsConfiguration' containing
-- required fields as arguments.
guardDutyDetectorCFNS3LogsConfiguration
  :: GuardDutyDetectorCFNS3LogsConfiguration
guardDutyDetectorCFNS3LogsConfiguration  =
  GuardDutyDetectorCFNS3LogsConfiguration
  { _guardDutyDetectorCFNS3LogsConfigurationEnable = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfns3logsconfiguration.html#cfn-guardduty-detector-cfns3logsconfiguration-enable
gddcfnslcEnable :: Lens' GuardDutyDetectorCFNS3LogsConfiguration (Maybe (Val Bool))
gddcfnslcEnable = lens _guardDutyDetectorCFNS3LogsConfigurationEnable (\s a -> s { _guardDutyDetectorCFNS3LogsConfigurationEnable = a })

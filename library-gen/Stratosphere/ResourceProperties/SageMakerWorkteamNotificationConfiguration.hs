
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-notificationconfiguration.html

module Stratosphere.ResourceProperties.SageMakerWorkteamNotificationConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerWorkteamNotificationConfiguration.
-- See 'sageMakerWorkteamNotificationConfiguration' for a more convenient
-- constructor.
data SageMakerWorkteamNotificationConfiguration =
  SageMakerWorkteamNotificationConfiguration
  { _sageMakerWorkteamNotificationConfigurationNotificationTopicArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON SageMakerWorkteamNotificationConfiguration where
  toJSON SageMakerWorkteamNotificationConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("NotificationTopicArn",) . toJSON) _sageMakerWorkteamNotificationConfigurationNotificationTopicArn
    ]

-- | Constructor for 'SageMakerWorkteamNotificationConfiguration' containing
-- required fields as arguments.
sageMakerWorkteamNotificationConfiguration
  :: Val Text -- ^ 'smwncNotificationTopicArn'
  -> SageMakerWorkteamNotificationConfiguration
sageMakerWorkteamNotificationConfiguration notificationTopicArnarg =
  SageMakerWorkteamNotificationConfiguration
  { _sageMakerWorkteamNotificationConfigurationNotificationTopicArn = notificationTopicArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-notificationconfiguration.html#cfn-sagemaker-workteam-notificationconfiguration-notificationtopicarn
smwncNotificationTopicArn :: Lens' SageMakerWorkteamNotificationConfiguration (Val Text)
smwncNotificationTopicArn = lens _sageMakerWorkteamNotificationConfigurationNotificationTopicArn (\s a -> s { _sageMakerWorkteamNotificationConfigurationNotificationTopicArn = a })

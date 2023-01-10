
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html

module Stratosphere.ResourceProperties.EventsRuleEcsParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventsRuleNetworkConfiguration

-- | Full data type definition for EventsRuleEcsParameters. See
-- 'eventsRuleEcsParameters' for a more convenient constructor.
data EventsRuleEcsParameters =
  EventsRuleEcsParameters
  { _eventsRuleEcsParametersGroup :: Maybe (Val Text)
  , _eventsRuleEcsParametersLaunchType :: Maybe (Val Text)
  , _eventsRuleEcsParametersNetworkConfiguration :: Maybe EventsRuleNetworkConfiguration
  , _eventsRuleEcsParametersPlatformVersion :: Maybe (Val Text)
  , _eventsRuleEcsParametersTaskCount :: Maybe (Val Integer)
  , _eventsRuleEcsParametersTaskDefinitionArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON EventsRuleEcsParameters where
  toJSON EventsRuleEcsParameters{..} =
    object $
    catMaybes
    [ fmap (("Group",) . toJSON) _eventsRuleEcsParametersGroup
    , fmap (("LaunchType",) . toJSON) _eventsRuleEcsParametersLaunchType
    , fmap (("NetworkConfiguration",) . toJSON) _eventsRuleEcsParametersNetworkConfiguration
    , fmap (("PlatformVersion",) . toJSON) _eventsRuleEcsParametersPlatformVersion
    , fmap (("TaskCount",) . toJSON) _eventsRuleEcsParametersTaskCount
    , (Just . ("TaskDefinitionArn",) . toJSON) _eventsRuleEcsParametersTaskDefinitionArn
    ]

-- | Constructor for 'EventsRuleEcsParameters' containing required fields as
-- arguments.
eventsRuleEcsParameters
  :: Val Text -- ^ 'erepTaskDefinitionArn'
  -> EventsRuleEcsParameters
eventsRuleEcsParameters taskDefinitionArnarg =
  EventsRuleEcsParameters
  { _eventsRuleEcsParametersGroup = Nothing
  , _eventsRuleEcsParametersLaunchType = Nothing
  , _eventsRuleEcsParametersNetworkConfiguration = Nothing
  , _eventsRuleEcsParametersPlatformVersion = Nothing
  , _eventsRuleEcsParametersTaskCount = Nothing
  , _eventsRuleEcsParametersTaskDefinitionArn = taskDefinitionArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-group
erepGroup :: Lens' EventsRuleEcsParameters (Maybe (Val Text))
erepGroup = lens _eventsRuleEcsParametersGroup (\s a -> s { _eventsRuleEcsParametersGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-launchtype
erepLaunchType :: Lens' EventsRuleEcsParameters (Maybe (Val Text))
erepLaunchType = lens _eventsRuleEcsParametersLaunchType (\s a -> s { _eventsRuleEcsParametersLaunchType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-networkconfiguration
erepNetworkConfiguration :: Lens' EventsRuleEcsParameters (Maybe EventsRuleNetworkConfiguration)
erepNetworkConfiguration = lens _eventsRuleEcsParametersNetworkConfiguration (\s a -> s { _eventsRuleEcsParametersNetworkConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-platformversion
erepPlatformVersion :: Lens' EventsRuleEcsParameters (Maybe (Val Text))
erepPlatformVersion = lens _eventsRuleEcsParametersPlatformVersion (\s a -> s { _eventsRuleEcsParametersPlatformVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskcount
erepTaskCount :: Lens' EventsRuleEcsParameters (Maybe (Val Integer))
erepTaskCount = lens _eventsRuleEcsParametersTaskCount (\s a -> s { _eventsRuleEcsParametersTaskCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskdefinitionarn
erepTaskDefinitionArn :: Lens' EventsRuleEcsParameters (Val Text)
erepTaskDefinitionArn = lens _eventsRuleEcsParametersTaskDefinitionArn (\s a -> s { _eventsRuleEcsParametersTaskDefinitionArn = a })

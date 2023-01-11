
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-networkconfiguration.html

module Stratosphere.ResourceProperties.EventsRuleNetworkConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventsRuleAwsVpcConfiguration

-- | Full data type definition for EventsRuleNetworkConfiguration. See
-- 'eventsRuleNetworkConfiguration' for a more convenient constructor.
data EventsRuleNetworkConfiguration =
  EventsRuleNetworkConfiguration
  { _eventsRuleNetworkConfigurationAwsVpcConfiguration :: Maybe EventsRuleAwsVpcConfiguration
  } deriving (Show, Eq)

instance ToJSON EventsRuleNetworkConfiguration where
  toJSON EventsRuleNetworkConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AwsVpcConfiguration",) . toJSON) _eventsRuleNetworkConfigurationAwsVpcConfiguration
    ]

-- | Constructor for 'EventsRuleNetworkConfiguration' containing required
-- fields as arguments.
eventsRuleNetworkConfiguration
  :: EventsRuleNetworkConfiguration
eventsRuleNetworkConfiguration  =
  EventsRuleNetworkConfiguration
  { _eventsRuleNetworkConfigurationAwsVpcConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-networkconfiguration.html#cfn-events-rule-networkconfiguration-awsvpcconfiguration
erncAwsVpcConfiguration :: Lens' EventsRuleNetworkConfiguration (Maybe EventsRuleAwsVpcConfiguration)
erncAwsVpcConfiguration = lens _eventsRuleNetworkConfigurationAwsVpcConfiguration (\s a -> s { _eventsRuleNetworkConfigurationAwsVpcConfiguration = a })

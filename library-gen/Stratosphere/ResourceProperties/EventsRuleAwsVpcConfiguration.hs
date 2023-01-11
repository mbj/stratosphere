
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html

module Stratosphere.ResourceProperties.EventsRuleAwsVpcConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleAwsVpcConfiguration. See
-- 'eventsRuleAwsVpcConfiguration' for a more convenient constructor.
data EventsRuleAwsVpcConfiguration =
  EventsRuleAwsVpcConfiguration
  { _eventsRuleAwsVpcConfigurationAssignPublicIp :: Maybe (Val Text)
  , _eventsRuleAwsVpcConfigurationSecurityGroups :: Maybe (ValList Text)
  , _eventsRuleAwsVpcConfigurationSubnets :: ValList Text
  } deriving (Show, Eq)

instance ToJSON EventsRuleAwsVpcConfiguration where
  toJSON EventsRuleAwsVpcConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AssignPublicIp",) . toJSON) _eventsRuleAwsVpcConfigurationAssignPublicIp
    , fmap (("SecurityGroups",) . toJSON) _eventsRuleAwsVpcConfigurationSecurityGroups
    , (Just . ("Subnets",) . toJSON) _eventsRuleAwsVpcConfigurationSubnets
    ]

-- | Constructor for 'EventsRuleAwsVpcConfiguration' containing required
-- fields as arguments.
eventsRuleAwsVpcConfiguration
  :: ValList Text -- ^ 'eravcSubnets'
  -> EventsRuleAwsVpcConfiguration
eventsRuleAwsVpcConfiguration subnetsarg =
  EventsRuleAwsVpcConfiguration
  { _eventsRuleAwsVpcConfigurationAssignPublicIp = Nothing
  , _eventsRuleAwsVpcConfigurationSecurityGroups = Nothing
  , _eventsRuleAwsVpcConfigurationSubnets = subnetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-assignpublicip
eravcAssignPublicIp :: Lens' EventsRuleAwsVpcConfiguration (Maybe (Val Text))
eravcAssignPublicIp = lens _eventsRuleAwsVpcConfigurationAssignPublicIp (\s a -> s { _eventsRuleAwsVpcConfigurationAssignPublicIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-securitygroups
eravcSecurityGroups :: Lens' EventsRuleAwsVpcConfiguration (Maybe (ValList Text))
eravcSecurityGroups = lens _eventsRuleAwsVpcConfigurationSecurityGroups (\s a -> s { _eventsRuleAwsVpcConfigurationSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-subnets
eravcSubnets :: Lens' EventsRuleAwsVpcConfiguration (ValList Text)
eravcSubnets = lens _eventsRuleAwsVpcConfigurationSubnets (\s a -> s { _eventsRuleAwsVpcConfigurationSubnets = a })

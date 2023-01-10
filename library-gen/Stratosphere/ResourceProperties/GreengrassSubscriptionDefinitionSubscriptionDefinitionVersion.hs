
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html

module Stratosphere.ResourceProperties.GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassSubscriptionDefinitionSubscription

-- | Full data type definition for
-- GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion. See
-- 'greengrassSubscriptionDefinitionSubscriptionDefinitionVersion' for a
-- more convenient constructor.
data GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion =
  GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion
  { _greengrassSubscriptionDefinitionSubscriptionDefinitionVersionSubscriptions :: [GreengrassSubscriptionDefinitionSubscription]
  } deriving (Show, Eq)

instance ToJSON GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion where
  toJSON GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion{..} =
    object $
    catMaybes
    [ (Just . ("Subscriptions",) . toJSON) _greengrassSubscriptionDefinitionSubscriptionDefinitionVersionSubscriptions
    ]

-- | Constructor for
-- 'GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion'
-- containing required fields as arguments.
greengrassSubscriptionDefinitionSubscriptionDefinitionVersion
  :: [GreengrassSubscriptionDefinitionSubscription] -- ^ 'gsdsdvSubscriptions'
  -> GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion
greengrassSubscriptionDefinitionSubscriptionDefinitionVersion subscriptionsarg =
  GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion
  { _greengrassSubscriptionDefinitionSubscriptionDefinitionVersionSubscriptions = subscriptionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinition-subscriptiondefinitionversion-subscriptions
gsdsdvSubscriptions :: Lens' GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion [GreengrassSubscriptionDefinitionSubscription]
gsdsdvSubscriptions = lens _greengrassSubscriptionDefinitionSubscriptionDefinitionVersionSubscriptions (\s a -> s { _greengrassSubscriptionDefinitionSubscriptionDefinitionVersionSubscriptions = a })

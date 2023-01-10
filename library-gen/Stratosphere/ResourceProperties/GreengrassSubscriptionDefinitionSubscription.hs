
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html

module Stratosphere.ResourceProperties.GreengrassSubscriptionDefinitionSubscription where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassSubscriptionDefinitionSubscription. See
-- 'greengrassSubscriptionDefinitionSubscription' for a more convenient
-- constructor.
data GreengrassSubscriptionDefinitionSubscription =
  GreengrassSubscriptionDefinitionSubscription
  { _greengrassSubscriptionDefinitionSubscriptionId :: Val Text
  , _greengrassSubscriptionDefinitionSubscriptionSource :: Val Text
  , _greengrassSubscriptionDefinitionSubscriptionSubject :: Val Text
  , _greengrassSubscriptionDefinitionSubscriptionTarget :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassSubscriptionDefinitionSubscription where
  toJSON GreengrassSubscriptionDefinitionSubscription{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _greengrassSubscriptionDefinitionSubscriptionId
    , (Just . ("Source",) . toJSON) _greengrassSubscriptionDefinitionSubscriptionSource
    , (Just . ("Subject",) . toJSON) _greengrassSubscriptionDefinitionSubscriptionSubject
    , (Just . ("Target",) . toJSON) _greengrassSubscriptionDefinitionSubscriptionTarget
    ]

-- | Constructor for 'GreengrassSubscriptionDefinitionSubscription' containing
-- required fields as arguments.
greengrassSubscriptionDefinitionSubscription
  :: Val Text -- ^ 'gsdsId'
  -> Val Text -- ^ 'gsdsSource'
  -> Val Text -- ^ 'gsdsSubject'
  -> Val Text -- ^ 'gsdsTarget'
  -> GreengrassSubscriptionDefinitionSubscription
greengrassSubscriptionDefinitionSubscription idarg sourcearg subjectarg targetarg =
  GreengrassSubscriptionDefinitionSubscription
  { _greengrassSubscriptionDefinitionSubscriptionId = idarg
  , _greengrassSubscriptionDefinitionSubscriptionSource = sourcearg
  , _greengrassSubscriptionDefinitionSubscriptionSubject = subjectarg
  , _greengrassSubscriptionDefinitionSubscriptionTarget = targetarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-id
gsdsId :: Lens' GreengrassSubscriptionDefinitionSubscription (Val Text)
gsdsId = lens _greengrassSubscriptionDefinitionSubscriptionId (\s a -> s { _greengrassSubscriptionDefinitionSubscriptionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-source
gsdsSource :: Lens' GreengrassSubscriptionDefinitionSubscription (Val Text)
gsdsSource = lens _greengrassSubscriptionDefinitionSubscriptionSource (\s a -> s { _greengrassSubscriptionDefinitionSubscriptionSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-subject
gsdsSubject :: Lens' GreengrassSubscriptionDefinitionSubscription (Val Text)
gsdsSubject = lens _greengrassSubscriptionDefinitionSubscriptionSubject (\s a -> s { _greengrassSubscriptionDefinitionSubscriptionSubject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-target
gsdsTarget :: Lens' GreengrassSubscriptionDefinitionSubscription (Val Text)
gsdsTarget = lens _greengrassSubscriptionDefinitionSubscriptionTarget (\s a -> s { _greengrassSubscriptionDefinitionSubscriptionTarget = a })

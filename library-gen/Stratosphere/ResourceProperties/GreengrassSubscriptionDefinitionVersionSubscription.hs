{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html

module Stratosphere.ResourceProperties.GreengrassSubscriptionDefinitionVersionSubscription where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassSubscriptionDefinitionVersionSubscription. See
-- 'greengrassSubscriptionDefinitionVersionSubscription' for a more
-- convenient constructor.
data GreengrassSubscriptionDefinitionVersionSubscription =
  GreengrassSubscriptionDefinitionVersionSubscription
  { _greengrassSubscriptionDefinitionVersionSubscriptionId :: Val Text
  , _greengrassSubscriptionDefinitionVersionSubscriptionSource :: Val Text
  , _greengrassSubscriptionDefinitionVersionSubscriptionSubject :: Val Text
  , _greengrassSubscriptionDefinitionVersionSubscriptionTarget :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassSubscriptionDefinitionVersionSubscription where
  toJSON GreengrassSubscriptionDefinitionVersionSubscription{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _greengrassSubscriptionDefinitionVersionSubscriptionId
    , (Just . ("Source",) . toJSON) _greengrassSubscriptionDefinitionVersionSubscriptionSource
    , (Just . ("Subject",) . toJSON) _greengrassSubscriptionDefinitionVersionSubscriptionSubject
    , (Just . ("Target",) . toJSON) _greengrassSubscriptionDefinitionVersionSubscriptionTarget
    ]

-- | Constructor for 'GreengrassSubscriptionDefinitionVersionSubscription'
-- containing required fields as arguments.
greengrassSubscriptionDefinitionVersionSubscription
  :: Val Text -- ^ 'gsdvsId'
  -> Val Text -- ^ 'gsdvsSource'
  -> Val Text -- ^ 'gsdvsSubject'
  -> Val Text -- ^ 'gsdvsTarget'
  -> GreengrassSubscriptionDefinitionVersionSubscription
greengrassSubscriptionDefinitionVersionSubscription idarg sourcearg subjectarg targetarg =
  GreengrassSubscriptionDefinitionVersionSubscription
  { _greengrassSubscriptionDefinitionVersionSubscriptionId = idarg
  , _greengrassSubscriptionDefinitionVersionSubscriptionSource = sourcearg
  , _greengrassSubscriptionDefinitionVersionSubscriptionSubject = subjectarg
  , _greengrassSubscriptionDefinitionVersionSubscriptionTarget = targetarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-id
gsdvsId :: Lens' GreengrassSubscriptionDefinitionVersionSubscription (Val Text)
gsdvsId = lens _greengrassSubscriptionDefinitionVersionSubscriptionId (\s a -> s { _greengrassSubscriptionDefinitionVersionSubscriptionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-source
gsdvsSource :: Lens' GreengrassSubscriptionDefinitionVersionSubscription (Val Text)
gsdvsSource = lens _greengrassSubscriptionDefinitionVersionSubscriptionSource (\s a -> s { _greengrassSubscriptionDefinitionVersionSubscriptionSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-subject
gsdvsSubject :: Lens' GreengrassSubscriptionDefinitionVersionSubscription (Val Text)
gsdvsSubject = lens _greengrassSubscriptionDefinitionVersionSubscriptionSubject (\s a -> s { _greengrassSubscriptionDefinitionVersionSubscriptionSubject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-target
gsdvsTarget :: Lens' GreengrassSubscriptionDefinitionVersionSubscription (Val Text)
gsdvsTarget = lens _greengrassSubscriptionDefinitionVersionSubscriptionTarget (\s a -> s { _greengrassSubscriptionDefinitionVersionSubscriptionTarget = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html

module Stratosphere.Resources.GreengrassSubscriptionDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassSubscriptionDefinitionVersionSubscription

-- | Full data type definition for GreengrassSubscriptionDefinitionVersion.
-- See 'greengrassSubscriptionDefinitionVersion' for a more convenient
-- constructor.
data GreengrassSubscriptionDefinitionVersion =
  GreengrassSubscriptionDefinitionVersion
  { _greengrassSubscriptionDefinitionVersionSubscriptionDefinitionId :: Val Text
  , _greengrassSubscriptionDefinitionVersionSubscriptions :: [GreengrassSubscriptionDefinitionVersionSubscription]
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassSubscriptionDefinitionVersion where
  toResourceProperties GreengrassSubscriptionDefinitionVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::SubscriptionDefinitionVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("SubscriptionDefinitionId",) . toJSON) _greengrassSubscriptionDefinitionVersionSubscriptionDefinitionId
        , (Just . ("Subscriptions",) . toJSON) _greengrassSubscriptionDefinitionVersionSubscriptions
        ]
    }

-- | Constructor for 'GreengrassSubscriptionDefinitionVersion' containing
-- required fields as arguments.
greengrassSubscriptionDefinitionVersion
  :: Val Text -- ^ 'gsdvSubscriptionDefinitionId'
  -> [GreengrassSubscriptionDefinitionVersionSubscription] -- ^ 'gsdvSubscriptions'
  -> GreengrassSubscriptionDefinitionVersion
greengrassSubscriptionDefinitionVersion subscriptionDefinitionIdarg subscriptionsarg =
  GreengrassSubscriptionDefinitionVersion
  { _greengrassSubscriptionDefinitionVersionSubscriptionDefinitionId = subscriptionDefinitionIdarg
  , _greengrassSubscriptionDefinitionVersionSubscriptions = subscriptionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinitionversion-subscriptiondefinitionid
gsdvSubscriptionDefinitionId :: Lens' GreengrassSubscriptionDefinitionVersion (Val Text)
gsdvSubscriptionDefinitionId = lens _greengrassSubscriptionDefinitionVersionSubscriptionDefinitionId (\s a -> s { _greengrassSubscriptionDefinitionVersionSubscriptionDefinitionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinitionversion-subscriptions
gsdvSubscriptions :: Lens' GreengrassSubscriptionDefinitionVersion [GreengrassSubscriptionDefinitionVersionSubscription]
gsdvSubscriptions = lens _greengrassSubscriptionDefinitionVersionSubscriptions (\s a -> s { _greengrassSubscriptionDefinitionVersionSubscriptions = a })

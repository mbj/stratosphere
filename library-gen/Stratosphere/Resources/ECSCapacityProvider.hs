{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-capacityprovider.html

module Stratosphere.Resources.ECSCapacityProvider where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSCapacityProviderAutoScalingGroupProvider
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ECSCapacityProvider. See
-- 'ecsCapacityProvider' for a more convenient constructor.
data ECSCapacityProvider =
  ECSCapacityProvider
  { _eCSCapacityProviderAutoScalingGroupProvider :: ECSCapacityProviderAutoScalingGroupProvider
  , _eCSCapacityProviderName :: Maybe (Val Text)
  , _eCSCapacityProviderTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ECSCapacityProvider where
  toResourceProperties ECSCapacityProvider{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECS::CapacityProvider"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AutoScalingGroupProvider",) . toJSON) _eCSCapacityProviderAutoScalingGroupProvider
        , fmap (("Name",) . toJSON) _eCSCapacityProviderName
        , fmap (("Tags",) . toJSON) _eCSCapacityProviderTags
        ]
    }

-- | Constructor for 'ECSCapacityProvider' containing required fields as
-- arguments.
ecsCapacityProvider
  :: ECSCapacityProviderAutoScalingGroupProvider -- ^ 'ecscpAutoScalingGroupProvider'
  -> ECSCapacityProvider
ecsCapacityProvider autoScalingGroupProviderarg =
  ECSCapacityProvider
  { _eCSCapacityProviderAutoScalingGroupProvider = autoScalingGroupProviderarg
  , _eCSCapacityProviderName = Nothing
  , _eCSCapacityProviderTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-capacityprovider.html#cfn-ecs-capacityprovider-autoscalinggroupprovider
ecscpAutoScalingGroupProvider :: Lens' ECSCapacityProvider ECSCapacityProviderAutoScalingGroupProvider
ecscpAutoScalingGroupProvider = lens _eCSCapacityProviderAutoScalingGroupProvider (\s a -> s { _eCSCapacityProviderAutoScalingGroupProvider = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-capacityprovider.html#cfn-ecs-capacityprovider-name
ecscpName :: Lens' ECSCapacityProvider (Maybe (Val Text))
ecscpName = lens _eCSCapacityProviderName (\s a -> s { _eCSCapacityProviderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-capacityprovider.html#cfn-ecs-capacityprovider-tags
ecscpTags :: Lens' ECSCapacityProvider (Maybe [Tag])
ecscpTags = lens _eCSCapacityProviderTags (\s a -> s { _eCSCapacityProviderTags = a })

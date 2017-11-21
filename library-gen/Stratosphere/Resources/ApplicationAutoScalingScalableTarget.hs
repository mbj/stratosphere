{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html

module Stratosphere.Resources.ApplicationAutoScalingScalableTarget where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalableTargetScheduledAction

-- | Full data type definition for ApplicationAutoScalingScalableTarget. See
-- 'applicationAutoScalingScalableTarget' for a more convenient constructor.
data ApplicationAutoScalingScalableTarget =
  ApplicationAutoScalingScalableTarget
  { _applicationAutoScalingScalableTargetMaxCapacity :: Val Integer
  , _applicationAutoScalingScalableTargetMinCapacity :: Val Integer
  , _applicationAutoScalingScalableTargetResourceId :: Val Text
  , _applicationAutoScalingScalableTargetRoleARN :: Val Text
  , _applicationAutoScalingScalableTargetScalableDimension :: Val Text
  , _applicationAutoScalingScalableTargetScheduledActions :: Maybe [ApplicationAutoScalingScalableTargetScheduledAction]
  , _applicationAutoScalingScalableTargetServiceNamespace :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalableTarget where
  toJSON ApplicationAutoScalingScalableTarget{..} =
    object $
    catMaybes
    [ (Just . ("MaxCapacity",) . toJSON . fmap Integer') _applicationAutoScalingScalableTargetMaxCapacity
    , (Just . ("MinCapacity",) . toJSON . fmap Integer') _applicationAutoScalingScalableTargetMinCapacity
    , (Just . ("ResourceId",) . toJSON) _applicationAutoScalingScalableTargetResourceId
    , (Just . ("RoleARN",) . toJSON) _applicationAutoScalingScalableTargetRoleARN
    , (Just . ("ScalableDimension",) . toJSON) _applicationAutoScalingScalableTargetScalableDimension
    , fmap (("ScheduledActions",) . toJSON) _applicationAutoScalingScalableTargetScheduledActions
    , (Just . ("ServiceNamespace",) . toJSON) _applicationAutoScalingScalableTargetServiceNamespace
    ]

instance FromJSON ApplicationAutoScalingScalableTarget where
  parseJSON (Object obj) =
    ApplicationAutoScalingScalableTarget <$>
      fmap (fmap unInteger') (obj .: "MaxCapacity") <*>
      fmap (fmap unInteger') (obj .: "MinCapacity") <*>
      (obj .: "ResourceId") <*>
      (obj .: "RoleARN") <*>
      (obj .: "ScalableDimension") <*>
      (obj .:? "ScheduledActions") <*>
      (obj .: "ServiceNamespace")
  parseJSON _ = mempty

-- | Constructor for 'ApplicationAutoScalingScalableTarget' containing
-- required fields as arguments.
applicationAutoScalingScalableTarget
  :: Val Integer -- ^ 'aasstMaxCapacity'
  -> Val Integer -- ^ 'aasstMinCapacity'
  -> Val Text -- ^ 'aasstResourceId'
  -> Val Text -- ^ 'aasstRoleARN'
  -> Val Text -- ^ 'aasstScalableDimension'
  -> Val Text -- ^ 'aasstServiceNamespace'
  -> ApplicationAutoScalingScalableTarget
applicationAutoScalingScalableTarget maxCapacityarg minCapacityarg resourceIdarg roleARNarg scalableDimensionarg serviceNamespacearg =
  ApplicationAutoScalingScalableTarget
  { _applicationAutoScalingScalableTargetMaxCapacity = maxCapacityarg
  , _applicationAutoScalingScalableTargetMinCapacity = minCapacityarg
  , _applicationAutoScalingScalableTargetResourceId = resourceIdarg
  , _applicationAutoScalingScalableTargetRoleARN = roleARNarg
  , _applicationAutoScalingScalableTargetScalableDimension = scalableDimensionarg
  , _applicationAutoScalingScalableTargetScheduledActions = Nothing
  , _applicationAutoScalingScalableTargetServiceNamespace = serviceNamespacearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-maxcapacity
aasstMaxCapacity :: Lens' ApplicationAutoScalingScalableTarget (Val Integer)
aasstMaxCapacity = lens _applicationAutoScalingScalableTargetMaxCapacity (\s a -> s { _applicationAutoScalingScalableTargetMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-mincapacity
aasstMinCapacity :: Lens' ApplicationAutoScalingScalableTarget (Val Integer)
aasstMinCapacity = lens _applicationAutoScalingScalableTargetMinCapacity (\s a -> s { _applicationAutoScalingScalableTargetMinCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-resourceid
aasstResourceId :: Lens' ApplicationAutoScalingScalableTarget (Val Text)
aasstResourceId = lens _applicationAutoScalingScalableTargetResourceId (\s a -> s { _applicationAutoScalingScalableTargetResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-rolearn
aasstRoleARN :: Lens' ApplicationAutoScalingScalableTarget (Val Text)
aasstRoleARN = lens _applicationAutoScalingScalableTargetRoleARN (\s a -> s { _applicationAutoScalingScalableTargetRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-scalabledimension
aasstScalableDimension :: Lens' ApplicationAutoScalingScalableTarget (Val Text)
aasstScalableDimension = lens _applicationAutoScalingScalableTargetScalableDimension (\s a -> s { _applicationAutoScalingScalableTargetScalableDimension = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-scheduledactions
aasstScheduledActions :: Lens' ApplicationAutoScalingScalableTarget (Maybe [ApplicationAutoScalingScalableTargetScheduledAction])
aasstScheduledActions = lens _applicationAutoScalingScalableTargetScheduledActions (\s a -> s { _applicationAutoScalingScalableTargetScheduledActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-servicenamespace
aasstServiceNamespace :: Lens' ApplicationAutoScalingScalableTarget (Val Text)
aasstServiceNamespace = lens _applicationAutoScalingScalableTargetServiceNamespace (\s a -> s { _applicationAutoScalingScalableTargetServiceNamespace = a })

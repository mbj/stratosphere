{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersetting.html

module Stratosphere.ResourceProperties.ECSClusterClusterSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSClusterClusterSetting. See
-- 'ecsClusterClusterSetting' for a more convenient constructor.
data ECSClusterClusterSetting =
  ECSClusterClusterSetting
  { _eCSClusterClusterSettingName :: Val Text
  , _eCSClusterClusterSettingValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSClusterClusterSetting where
  toJSON ECSClusterClusterSetting{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _eCSClusterClusterSettingName
    , (Just . ("Value",) . toJSON) _eCSClusterClusterSettingValue
    ]

-- | Constructor for 'ECSClusterClusterSetting' containing required fields as
-- arguments.
ecsClusterClusterSetting
  :: Val Text -- ^ 'ecsccsName'
  -> Val Text -- ^ 'ecsccsValue'
  -> ECSClusterClusterSetting
ecsClusterClusterSetting namearg valuearg =
  ECSClusterClusterSetting
  { _eCSClusterClusterSettingName = namearg
  , _eCSClusterClusterSettingValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersetting.html#cfn-ecs-cluster-clustersetting-name
ecsccsName :: Lens' ECSClusterClusterSetting (Val Text)
ecsccsName = lens _eCSClusterClusterSettingName (\s a -> s { _eCSClusterClusterSettingName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersetting.html#cfn-ecs-cluster-clustersetting-value
ecsccsValue :: Lens' ECSClusterClusterSetting (Val Text)
ecsccsValue = lens _eCSClusterClusterSettingValue (\s a -> s { _eCSClusterClusterSettingValue = a })

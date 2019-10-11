{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-duration.html

module Stratosphere.ResourceProperties.AppMeshRouteDuration where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshRouteDuration. See
-- 'appMeshRouteDuration' for a more convenient constructor.
data AppMeshRouteDuration =
  AppMeshRouteDuration
  { _appMeshRouteDurationUnit :: Val Text
  , _appMeshRouteDurationValue :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteDuration where
  toJSON AppMeshRouteDuration{..} =
    object $
    catMaybes
    [ (Just . ("Unit",) . toJSON) _appMeshRouteDurationUnit
    , (Just . ("Value",) . toJSON) _appMeshRouteDurationValue
    ]

-- | Constructor for 'AppMeshRouteDuration' containing required fields as
-- arguments.
appMeshRouteDuration
  :: Val Text -- ^ 'amrdUnit'
  -> Val Integer -- ^ 'amrdValue'
  -> AppMeshRouteDuration
appMeshRouteDuration unitarg valuearg =
  AppMeshRouteDuration
  { _appMeshRouteDurationUnit = unitarg
  , _appMeshRouteDurationValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-duration.html#cfn-appmesh-route-duration-unit
amrdUnit :: Lens' AppMeshRouteDuration (Val Text)
amrdUnit = lens _appMeshRouteDurationUnit (\s a -> s { _appMeshRouteDurationUnit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-duration.html#cfn-appmesh-route-duration-value
amrdValue :: Lens' AppMeshRouteDuration (Val Integer)
amrdValue = lens _appMeshRouteDurationValue (\s a -> s { _appMeshRouteDurationValue = a })

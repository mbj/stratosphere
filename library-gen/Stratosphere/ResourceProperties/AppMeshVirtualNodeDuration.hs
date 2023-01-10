
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-duration.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeDuration where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualNodeDuration. See
-- 'appMeshVirtualNodeDuration' for a more convenient constructor.
data AppMeshVirtualNodeDuration =
  AppMeshVirtualNodeDuration
  { _appMeshVirtualNodeDurationUnit :: Val Text
  , _appMeshVirtualNodeDurationValue :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeDuration where
  toJSON AppMeshVirtualNodeDuration{..} =
    object $
    catMaybes
    [ (Just . ("Unit",) . toJSON) _appMeshVirtualNodeDurationUnit
    , (Just . ("Value",) . toJSON) _appMeshVirtualNodeDurationValue
    ]

-- | Constructor for 'AppMeshVirtualNodeDuration' containing required fields
-- as arguments.
appMeshVirtualNodeDuration
  :: Val Text -- ^ 'amvndUnit'
  -> Val Integer -- ^ 'amvndValue'
  -> AppMeshVirtualNodeDuration
appMeshVirtualNodeDuration unitarg valuearg =
  AppMeshVirtualNodeDuration
  { _appMeshVirtualNodeDurationUnit = unitarg
  , _appMeshVirtualNodeDurationValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-duration.html#cfn-appmesh-virtualnode-duration-unit
amvndUnit :: Lens' AppMeshVirtualNodeDuration (Val Text)
amvndUnit = lens _appMeshVirtualNodeDurationUnit (\s a -> s { _appMeshVirtualNodeDurationUnit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-duration.html#cfn-appmesh-virtualnode-duration-value
amvndValue :: Lens' AppMeshVirtualNodeDuration (Val Integer)
amvndValue = lens _appMeshVirtualNodeDurationValue (\s a -> s { _appMeshVirtualNodeDurationValue = a })

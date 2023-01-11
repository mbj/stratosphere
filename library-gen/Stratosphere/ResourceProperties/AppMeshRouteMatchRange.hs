
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html

module Stratosphere.ResourceProperties.AppMeshRouteMatchRange where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshRouteMatchRange. See
-- 'appMeshRouteMatchRange' for a more convenient constructor.
data AppMeshRouteMatchRange =
  AppMeshRouteMatchRange
  { _appMeshRouteMatchRangeEnd :: Val Integer
  , _appMeshRouteMatchRangeStart :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteMatchRange where
  toJSON AppMeshRouteMatchRange{..} =
    object $
    catMaybes
    [ (Just . ("End",) . toJSON) _appMeshRouteMatchRangeEnd
    , (Just . ("Start",) . toJSON) _appMeshRouteMatchRangeStart
    ]

-- | Constructor for 'AppMeshRouteMatchRange' containing required fields as
-- arguments.
appMeshRouteMatchRange
  :: Val Integer -- ^ 'amrmrEnd'
  -> Val Integer -- ^ 'amrmrStart'
  -> AppMeshRouteMatchRange
appMeshRouteMatchRange endarg startarg =
  AppMeshRouteMatchRange
  { _appMeshRouteMatchRangeEnd = endarg
  , _appMeshRouteMatchRangeStart = startarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html#cfn-appmesh-route-matchrange-end
amrmrEnd :: Lens' AppMeshRouteMatchRange (Val Integer)
amrmrEnd = lens _appMeshRouteMatchRangeEnd (\s a -> s { _appMeshRouteMatchRangeEnd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-matchrange.html#cfn-appmesh-route-matchrange-start
amrmrStart :: Lens' AppMeshRouteMatchRange (Val Integer)
amrmrStart = lens _appMeshRouteMatchRangeStart (\s a -> s { _appMeshRouteMatchRangeStart = a })

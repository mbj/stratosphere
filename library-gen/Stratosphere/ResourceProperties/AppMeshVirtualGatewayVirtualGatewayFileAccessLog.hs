
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayfileaccesslog.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayFileAccessLog where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayFileAccessLog. See
-- 'appMeshVirtualGatewayVirtualGatewayFileAccessLog' for a more convenient
-- constructor.
data AppMeshVirtualGatewayVirtualGatewayFileAccessLog =
  AppMeshVirtualGatewayVirtualGatewayFileAccessLog
  { _appMeshVirtualGatewayVirtualGatewayFileAccessLogPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayFileAccessLog where
  toJSON AppMeshVirtualGatewayVirtualGatewayFileAccessLog{..} =
    object $
    catMaybes
    [ (Just . ("Path",) . toJSON) _appMeshVirtualGatewayVirtualGatewayFileAccessLogPath
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayFileAccessLog'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayFileAccessLog
  :: Val Text -- ^ 'amvgvgfalPath'
  -> AppMeshVirtualGatewayVirtualGatewayFileAccessLog
appMeshVirtualGatewayVirtualGatewayFileAccessLog patharg =
  AppMeshVirtualGatewayVirtualGatewayFileAccessLog
  { _appMeshVirtualGatewayVirtualGatewayFileAccessLogPath = patharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayfileaccesslog.html#cfn-appmesh-virtualgateway-virtualgatewayfileaccesslog-path
amvgvgfalPath :: Lens' AppMeshVirtualGatewayVirtualGatewayFileAccessLog (Val Text)
amvgvgfalPath = lens _appMeshVirtualGatewayVirtualGatewayFileAccessLogPath (\s a -> s { _appMeshVirtualGatewayVirtualGatewayFileAccessLogPath = a })

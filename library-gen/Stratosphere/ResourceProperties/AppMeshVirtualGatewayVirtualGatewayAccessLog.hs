
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayaccesslog.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayAccessLog where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayFileAccessLog

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayAccessLog. See
-- 'appMeshVirtualGatewayVirtualGatewayAccessLog' for a more convenient
-- constructor.
data AppMeshVirtualGatewayVirtualGatewayAccessLog =
  AppMeshVirtualGatewayVirtualGatewayAccessLog
  { _appMeshVirtualGatewayVirtualGatewayAccessLogFile :: Maybe AppMeshVirtualGatewayVirtualGatewayFileAccessLog
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayAccessLog where
  toJSON AppMeshVirtualGatewayVirtualGatewayAccessLog{..} =
    object $
    catMaybes
    [ fmap (("File",) . toJSON) _appMeshVirtualGatewayVirtualGatewayAccessLogFile
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayAccessLog' containing
-- required fields as arguments.
appMeshVirtualGatewayVirtualGatewayAccessLog
  :: AppMeshVirtualGatewayVirtualGatewayAccessLog
appMeshVirtualGatewayVirtualGatewayAccessLog  =
  AppMeshVirtualGatewayVirtualGatewayAccessLog
  { _appMeshVirtualGatewayVirtualGatewayAccessLogFile = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayaccesslog.html#cfn-appmesh-virtualgateway-virtualgatewayaccesslog-file
amvgvgalFile :: Lens' AppMeshVirtualGatewayVirtualGatewayAccessLog (Maybe AppMeshVirtualGatewayVirtualGatewayFileAccessLog)
amvgvgalFile = lens _appMeshVirtualGatewayVirtualGatewayAccessLogFile (\s a -> s { _appMeshVirtualGatewayVirtualGatewayAccessLogFile = a })

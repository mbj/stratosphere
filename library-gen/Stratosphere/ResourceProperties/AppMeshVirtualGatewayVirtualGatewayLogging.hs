
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylogging.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayLogging where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayAccessLog

-- | Full data type definition for AppMeshVirtualGatewayVirtualGatewayLogging.
-- See 'appMeshVirtualGatewayVirtualGatewayLogging' for a more convenient
-- constructor.
data AppMeshVirtualGatewayVirtualGatewayLogging =
  AppMeshVirtualGatewayVirtualGatewayLogging
  { _appMeshVirtualGatewayVirtualGatewayLoggingAccessLog :: Maybe AppMeshVirtualGatewayVirtualGatewayAccessLog
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayLogging where
  toJSON AppMeshVirtualGatewayVirtualGatewayLogging{..} =
    object $
    catMaybes
    [ fmap (("AccessLog",) . toJSON) _appMeshVirtualGatewayVirtualGatewayLoggingAccessLog
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayLogging' containing
-- required fields as arguments.
appMeshVirtualGatewayVirtualGatewayLogging
  :: AppMeshVirtualGatewayVirtualGatewayLogging
appMeshVirtualGatewayVirtualGatewayLogging  =
  AppMeshVirtualGatewayVirtualGatewayLogging
  { _appMeshVirtualGatewayVirtualGatewayLoggingAccessLog = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylogging.html#cfn-appmesh-virtualgateway-virtualgatewaylogging-accesslog
amvgvglAccessLog :: Lens' AppMeshVirtualGatewayVirtualGatewayLogging (Maybe AppMeshVirtualGatewayVirtualGatewayAccessLog)
amvgvglAccessLog = lens _appMeshVirtualGatewayVirtualGatewayLoggingAccessLog (\s a -> s { _appMeshVirtualGatewayVirtualGatewayLoggingAccessLog = a })

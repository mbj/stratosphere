
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html

module Stratosphere.ResourceProperties.AppStreamImageBuilderAccessEndpoint where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamImageBuilderAccessEndpoint. See
-- 'appStreamImageBuilderAccessEndpoint' for a more convenient constructor.
data AppStreamImageBuilderAccessEndpoint =
  AppStreamImageBuilderAccessEndpoint
  { _appStreamImageBuilderAccessEndpointEndpointType :: Val Text
  , _appStreamImageBuilderAccessEndpointVpceId :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppStreamImageBuilderAccessEndpoint where
  toJSON AppStreamImageBuilderAccessEndpoint{..} =
    object $
    catMaybes
    [ (Just . ("EndpointType",) . toJSON) _appStreamImageBuilderAccessEndpointEndpointType
    , (Just . ("VpceId",) . toJSON) _appStreamImageBuilderAccessEndpointVpceId
    ]

-- | Constructor for 'AppStreamImageBuilderAccessEndpoint' containing required
-- fields as arguments.
appStreamImageBuilderAccessEndpoint
  :: Val Text -- ^ 'asibaeEndpointType'
  -> Val Text -- ^ 'asibaeVpceId'
  -> AppStreamImageBuilderAccessEndpoint
appStreamImageBuilderAccessEndpoint endpointTypearg vpceIdarg =
  AppStreamImageBuilderAccessEndpoint
  { _appStreamImageBuilderAccessEndpointEndpointType = endpointTypearg
  , _appStreamImageBuilderAccessEndpointVpceId = vpceIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html#cfn-appstream-imagebuilder-accessendpoint-endpointtype
asibaeEndpointType :: Lens' AppStreamImageBuilderAccessEndpoint (Val Text)
asibaeEndpointType = lens _appStreamImageBuilderAccessEndpointEndpointType (\s a -> s { _appStreamImageBuilderAccessEndpointEndpointType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-accessendpoint.html#cfn-appstream-imagebuilder-accessendpoint-vpceid
asibaeVpceId :: Lens' AppStreamImageBuilderAccessEndpoint (Val Text)
asibaeVpceId = lens _appStreamImageBuilderAccessEndpointVpceId (\s a -> s { _appStreamImageBuilderAccessEndpointVpceId = a })

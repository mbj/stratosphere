{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayportmapping.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayPortMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayPortMapping. See
-- 'appMeshVirtualGatewayVirtualGatewayPortMapping' for a more convenient
-- constructor.
data AppMeshVirtualGatewayVirtualGatewayPortMapping =
  AppMeshVirtualGatewayVirtualGatewayPortMapping
  { _appMeshVirtualGatewayVirtualGatewayPortMappingPort :: Val Integer
  , _appMeshVirtualGatewayVirtualGatewayPortMappingProtocol :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayPortMapping where
  toJSON AppMeshVirtualGatewayVirtualGatewayPortMapping{..} =
    object $
    catMaybes
    [ (Just . ("Port",) . toJSON) _appMeshVirtualGatewayVirtualGatewayPortMappingPort
    , (Just . ("Protocol",) . toJSON) _appMeshVirtualGatewayVirtualGatewayPortMappingProtocol
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayPortMapping'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayPortMapping
  :: Val Integer -- ^ 'amvgvgpmPort'
  -> Val Text -- ^ 'amvgvgpmProtocol'
  -> AppMeshVirtualGatewayVirtualGatewayPortMapping
appMeshVirtualGatewayVirtualGatewayPortMapping portarg protocolarg =
  AppMeshVirtualGatewayVirtualGatewayPortMapping
  { _appMeshVirtualGatewayVirtualGatewayPortMappingPort = portarg
  , _appMeshVirtualGatewayVirtualGatewayPortMappingProtocol = protocolarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayportmapping.html#cfn-appmesh-virtualgateway-virtualgatewayportmapping-port
amvgvgpmPort :: Lens' AppMeshVirtualGatewayVirtualGatewayPortMapping (Val Integer)
amvgvgpmPort = lens _appMeshVirtualGatewayVirtualGatewayPortMappingPort (\s a -> s { _appMeshVirtualGatewayVirtualGatewayPortMappingPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayportmapping.html#cfn-appmesh-virtualgateway-virtualgatewayportmapping-protocol
amvgvgpmProtocol :: Lens' AppMeshVirtualGatewayVirtualGatewayPortMapping (Val Text)
amvgvgpmProtocol = lens _appMeshVirtualGatewayVirtualGatewayPortMappingProtocol (\s a -> s { _appMeshVirtualGatewayVirtualGatewayPortMappingProtocol = a })

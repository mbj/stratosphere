{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertls.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListenerTls where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayListenerTls. See
-- 'appMeshVirtualGatewayVirtualGatewayListenerTls' for a more convenient
-- constructor.
data AppMeshVirtualGatewayVirtualGatewayListenerTls =
  AppMeshVirtualGatewayVirtualGatewayListenerTls
  { _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificate :: AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate
  , _appMeshVirtualGatewayVirtualGatewayListenerTlsMode :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayListenerTls where
  toJSON AppMeshVirtualGatewayVirtualGatewayListenerTls{..} =
    object $
    catMaybes
    [ (Just . ("Certificate",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificate
    , (Just . ("Mode",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerTlsMode
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayListenerTls'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayListenerTls
  :: AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate -- ^ 'amvgvgltCertificate'
  -> Val Text -- ^ 'amvgvgltMode'
  -> AppMeshVirtualGatewayVirtualGatewayListenerTls
appMeshVirtualGatewayVirtualGatewayListenerTls certificatearg modearg =
  AppMeshVirtualGatewayVirtualGatewayListenerTls
  { _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificate = certificatearg
  , _appMeshVirtualGatewayVirtualGatewayListenerTlsMode = modearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertls.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertls-certificate
amvgvgltCertificate :: Lens' AppMeshVirtualGatewayVirtualGatewayListenerTls AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate
amvgvgltCertificate = lens _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificate (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertls.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertls-mode
amvgvgltMode :: Lens' AppMeshVirtualGatewayVirtualGatewayListenerTls (Val Text)
amvgvgltMode = lens _appMeshVirtualGatewayVirtualGatewayListenerTlsMode (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerTlsMode = a })

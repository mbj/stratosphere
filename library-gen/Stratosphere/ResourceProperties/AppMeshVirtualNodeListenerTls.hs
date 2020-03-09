{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTls where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTlsCertificate

-- | Full data type definition for AppMeshVirtualNodeListenerTls. See
-- 'appMeshVirtualNodeListenerTls' for a more convenient constructor.
data AppMeshVirtualNodeListenerTls =
  AppMeshVirtualNodeListenerTls
  { _appMeshVirtualNodeListenerTlsCertificate :: AppMeshVirtualNodeListenerTlsCertificate
  , _appMeshVirtualNodeListenerTlsMode :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeListenerTls where
  toJSON AppMeshVirtualNodeListenerTls{..} =
    object $
    catMaybes
    [ (Just . ("Certificate",) . toJSON) _appMeshVirtualNodeListenerTlsCertificate
    , (Just . ("Mode",) . toJSON) _appMeshVirtualNodeListenerTlsMode
    ]

-- | Constructor for 'AppMeshVirtualNodeListenerTls' containing required
-- fields as arguments.
appMeshVirtualNodeListenerTls
  :: AppMeshVirtualNodeListenerTlsCertificate -- ^ 'amvnltCertificate'
  -> Val Text -- ^ 'amvnltMode'
  -> AppMeshVirtualNodeListenerTls
appMeshVirtualNodeListenerTls certificatearg modearg =
  AppMeshVirtualNodeListenerTls
  { _appMeshVirtualNodeListenerTlsCertificate = certificatearg
  , _appMeshVirtualNodeListenerTlsMode = modearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html#cfn-appmesh-virtualnode-listenertls-certificate
amvnltCertificate :: Lens' AppMeshVirtualNodeListenerTls AppMeshVirtualNodeListenerTlsCertificate
amvnltCertificate = lens _appMeshVirtualNodeListenerTlsCertificate (\s a -> s { _appMeshVirtualNodeListenerTlsCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html#cfn-appmesh-virtualnode-listenertls-mode
amvnltMode :: Lens' AppMeshVirtualNodeListenerTls (Val Text)
amvnltMode = lens _appMeshVirtualNodeListenerTlsMode (\s a -> s { _appMeshVirtualNodeListenerTlsMode = a })

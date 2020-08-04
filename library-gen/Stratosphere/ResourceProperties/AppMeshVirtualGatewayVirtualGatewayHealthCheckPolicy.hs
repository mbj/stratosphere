{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy. See
-- 'appMeshVirtualGatewayVirtualGatewayHealthCheckPolicy' for a more
-- convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy =
  AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy
  { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyHealthyThreshold :: Val Integer
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyIntervalMillis :: Val Integer
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPath :: Maybe (Val Text)
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPort :: Maybe (Val Integer)
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyProtocol :: Val Text
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyTimeoutMillis :: Val Integer
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyUnhealthyThreshold :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy where
  toJSON AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy{..} =
    object $
    catMaybes
    [ (Just . ("HealthyThreshold",) . toJSON) _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyHealthyThreshold
    , (Just . ("IntervalMillis",) . toJSON) _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyIntervalMillis
    , fmap (("Path",) . toJSON) _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPath
    , fmap (("Port",) . toJSON) _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPort
    , (Just . ("Protocol",) . toJSON) _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyProtocol
    , (Just . ("TimeoutMillis",) . toJSON) _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyTimeoutMillis
    , (Just . ("UnhealthyThreshold",) . toJSON) _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyUnhealthyThreshold
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayHealthCheckPolicy
  :: Val Integer -- ^ 'amvgvghcpHealthyThreshold'
  -> Val Integer -- ^ 'amvgvghcpIntervalMillis'
  -> Val Text -- ^ 'amvgvghcpProtocol'
  -> Val Integer -- ^ 'amvgvghcpTimeoutMillis'
  -> Val Integer -- ^ 'amvgvghcpUnhealthyThreshold'
  -> AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy
appMeshVirtualGatewayVirtualGatewayHealthCheckPolicy healthyThresholdarg intervalMillisarg protocolarg timeoutMillisarg unhealthyThresholdarg =
  AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy
  { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyHealthyThreshold = healthyThresholdarg
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyIntervalMillis = intervalMillisarg
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPath = Nothing
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPort = Nothing
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyProtocol = protocolarg
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyTimeoutMillis = timeoutMillisarg
  , _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyUnhealthyThreshold = unhealthyThresholdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-healthythreshold
amvgvghcpHealthyThreshold :: Lens' AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy (Val Integer)
amvgvghcpHealthyThreshold = lens _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyHealthyThreshold (\s a -> s { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyHealthyThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-intervalmillis
amvgvghcpIntervalMillis :: Lens' AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy (Val Integer)
amvgvghcpIntervalMillis = lens _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyIntervalMillis (\s a -> s { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyIntervalMillis = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-path
amvgvghcpPath :: Lens' AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy (Maybe (Val Text))
amvgvghcpPath = lens _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPath (\s a -> s { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-port
amvgvghcpPort :: Lens' AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy (Maybe (Val Integer))
amvgvghcpPort = lens _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPort (\s a -> s { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-protocol
amvgvghcpProtocol :: Lens' AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy (Val Text)
amvgvghcpProtocol = lens _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyProtocol (\s a -> s { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-timeoutmillis
amvgvghcpTimeoutMillis :: Lens' AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy (Val Integer)
amvgvghcpTimeoutMillis = lens _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyTimeoutMillis (\s a -> s { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyTimeoutMillis = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-unhealthythreshold
amvgvghcpUnhealthyThreshold :: Lens' AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy (Val Integer)
amvgvghcpUnhealthyThreshold = lens _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyUnhealthyThreshold (\s a -> s { _appMeshVirtualGatewayVirtualGatewayHealthCheckPolicyUnhealthyThreshold = a })

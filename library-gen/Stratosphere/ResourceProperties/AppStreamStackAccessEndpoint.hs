{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html

module Stratosphere.ResourceProperties.AppStreamStackAccessEndpoint where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamStackAccessEndpoint. See
-- 'appStreamStackAccessEndpoint' for a more convenient constructor.
data AppStreamStackAccessEndpoint =
  AppStreamStackAccessEndpoint
  { _appStreamStackAccessEndpointEndpointType :: Val Text
  , _appStreamStackAccessEndpointVpceId :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppStreamStackAccessEndpoint where
  toJSON AppStreamStackAccessEndpoint{..} =
    object $
    catMaybes
    [ (Just . ("EndpointType",) . toJSON) _appStreamStackAccessEndpointEndpointType
    , (Just . ("VpceId",) . toJSON) _appStreamStackAccessEndpointVpceId
    ]

-- | Constructor for 'AppStreamStackAccessEndpoint' containing required fields
-- as arguments.
appStreamStackAccessEndpoint
  :: Val Text -- ^ 'assaeEndpointType'
  -> Val Text -- ^ 'assaeVpceId'
  -> AppStreamStackAccessEndpoint
appStreamStackAccessEndpoint endpointTypearg vpceIdarg =
  AppStreamStackAccessEndpoint
  { _appStreamStackAccessEndpointEndpointType = endpointTypearg
  , _appStreamStackAccessEndpointVpceId = vpceIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html#cfn-appstream-stack-accessendpoint-endpointtype
assaeEndpointType :: Lens' AppStreamStackAccessEndpoint (Val Text)
assaeEndpointType = lens _appStreamStackAccessEndpointEndpointType (\s a -> s { _appStreamStackAccessEndpointEndpointType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-accessendpoint.html#cfn-appstream-stack-accessendpoint-vpceid
assaeVpceId :: Lens' AppStreamStackAccessEndpoint (Val Text)
assaeVpceId = lens _appStreamStackAccessEndpointVpceId (\s a -> s { _appStreamStackAccessEndpointVpceId = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings.html

module Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings. See
-- 'apiGatewayV2ApiGatewayManagedOverridesAccessLogSettings' for a more
-- convenient constructor.
data ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings =
  ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings
  { _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsDestinationArn :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsFormat :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings where
  toJSON ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings{..} =
    object $
    catMaybes
    [ fmap (("DestinationArn",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsDestinationArn
    , fmap (("Format",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsFormat
    ]

-- | Constructor for 'ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings'
-- containing required fields as arguments.
apiGatewayV2ApiGatewayManagedOverridesAccessLogSettings
  :: ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings
apiGatewayV2ApiGatewayManagedOverridesAccessLogSettings  =
  ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings
  { _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsDestinationArn = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsFormat = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings-destinationarn
agvagmoalsDestinationArn :: Lens' ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings (Maybe (Val Text))
agvagmoalsDestinationArn = lens _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsDestinationArn (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings.html#cfn-apigatewayv2-apigatewaymanagedoverrides-accesslogsettings-format
agvagmoalsFormat :: Lens' ApiGatewayV2ApiGatewayManagedOverridesAccessLogSettings (Maybe (Val Text))
agvagmoalsFormat = lens _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsFormat (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesAccessLogSettingsFormat = a })

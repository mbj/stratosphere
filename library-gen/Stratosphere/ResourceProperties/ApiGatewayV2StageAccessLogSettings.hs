{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-accesslogsettings.html

module Stratosphere.ResourceProperties.ApiGatewayV2StageAccessLogSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2StageAccessLogSettings. See
-- 'apiGatewayV2StageAccessLogSettings' for a more convenient constructor.
data ApiGatewayV2StageAccessLogSettings =
  ApiGatewayV2StageAccessLogSettings
  { _apiGatewayV2StageAccessLogSettingsDestinationArn :: Maybe (Val Text)
  , _apiGatewayV2StageAccessLogSettingsFormat :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2StageAccessLogSettings where
  toJSON ApiGatewayV2StageAccessLogSettings{..} =
    object $
    catMaybes
    [ fmap (("DestinationArn",) . toJSON) _apiGatewayV2StageAccessLogSettingsDestinationArn
    , fmap (("Format",) . toJSON) _apiGatewayV2StageAccessLogSettingsFormat
    ]

instance FromJSON ApiGatewayV2StageAccessLogSettings where
  parseJSON (Object obj) =
    ApiGatewayV2StageAccessLogSettings <$>
      (obj .:? "DestinationArn") <*>
      (obj .:? "Format")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2StageAccessLogSettings' containing required
-- fields as arguments.
apiGatewayV2StageAccessLogSettings
  :: ApiGatewayV2StageAccessLogSettings
apiGatewayV2StageAccessLogSettings  =
  ApiGatewayV2StageAccessLogSettings
  { _apiGatewayV2StageAccessLogSettingsDestinationArn = Nothing
  , _apiGatewayV2StageAccessLogSettingsFormat = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-accesslogsettings.html#cfn-apigatewayv2-stage-accesslogsettings-destinationarn
agvsalsDestinationArn :: Lens' ApiGatewayV2StageAccessLogSettings (Maybe (Val Text))
agvsalsDestinationArn = lens _apiGatewayV2StageAccessLogSettingsDestinationArn (\s a -> s { _apiGatewayV2StageAccessLogSettingsDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-stage-accesslogsettings.html#cfn-apigatewayv2-stage-accesslogsettings-format
agvsalsFormat :: Lens' ApiGatewayV2StageAccessLogSettings (Maybe (Val Text))
agvsalsFormat = lens _apiGatewayV2StageAccessLogSettingsFormat (\s a -> s { _apiGatewayV2StageAccessLogSettingsFormat = a })

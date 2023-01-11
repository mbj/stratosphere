
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-accesslogsetting.html

module Stratosphere.ResourceProperties.ApiGatewayStageAccessLogSetting where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayStageAccessLogSetting. See
-- 'apiGatewayStageAccessLogSetting' for a more convenient constructor.
data ApiGatewayStageAccessLogSetting =
  ApiGatewayStageAccessLogSetting
  { _apiGatewayStageAccessLogSettingDestinationArn :: Maybe (Val Text)
  , _apiGatewayStageAccessLogSettingFormat :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayStageAccessLogSetting where
  toJSON ApiGatewayStageAccessLogSetting{..} =
    object $
    catMaybes
    [ fmap (("DestinationArn",) . toJSON) _apiGatewayStageAccessLogSettingDestinationArn
    , fmap (("Format",) . toJSON) _apiGatewayStageAccessLogSettingFormat
    ]

-- | Constructor for 'ApiGatewayStageAccessLogSetting' containing required
-- fields as arguments.
apiGatewayStageAccessLogSetting
  :: ApiGatewayStageAccessLogSetting
apiGatewayStageAccessLogSetting  =
  ApiGatewayStageAccessLogSetting
  { _apiGatewayStageAccessLogSettingDestinationArn = Nothing
  , _apiGatewayStageAccessLogSettingFormat = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-accesslogsetting.html#cfn-apigateway-stage-accesslogsetting-destinationarn
agsalsDestinationArn :: Lens' ApiGatewayStageAccessLogSetting (Maybe (Val Text))
agsalsDestinationArn = lens _apiGatewayStageAccessLogSettingDestinationArn (\s a -> s { _apiGatewayStageAccessLogSettingDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-stage-accesslogsetting.html#cfn-apigateway-stage-accesslogsetting-format
agsalsFormat :: Lens' ApiGatewayStageAccessLogSetting (Maybe (Val Text))
agsalsFormat = lens _apiGatewayStageAccessLogSettingFormat (\s a -> s { _apiGatewayStageAccessLogSettingFormat = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html

module Stratosphere.ResourceProperties.ApiGatewayDeploymentAccessLogSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayDeploymentAccessLogSetting. See
-- 'apiGatewayDeploymentAccessLogSetting' for a more convenient constructor.
data ApiGatewayDeploymentAccessLogSetting =
  ApiGatewayDeploymentAccessLogSetting
  { _apiGatewayDeploymentAccessLogSettingDestinationArn :: Maybe (Val Text)
  , _apiGatewayDeploymentAccessLogSettingFormat :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDeploymentAccessLogSetting where
  toJSON ApiGatewayDeploymentAccessLogSetting{..} =
    object $
    catMaybes
    [ fmap (("DestinationArn",) . toJSON) _apiGatewayDeploymentAccessLogSettingDestinationArn
    , fmap (("Format",) . toJSON) _apiGatewayDeploymentAccessLogSettingFormat
    ]

-- | Constructor for 'ApiGatewayDeploymentAccessLogSetting' containing
-- required fields as arguments.
apiGatewayDeploymentAccessLogSetting
  :: ApiGatewayDeploymentAccessLogSetting
apiGatewayDeploymentAccessLogSetting  =
  ApiGatewayDeploymentAccessLogSetting
  { _apiGatewayDeploymentAccessLogSettingDestinationArn = Nothing
  , _apiGatewayDeploymentAccessLogSettingFormat = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html#cfn-apigateway-deployment-accesslogsetting-destinationarn
agdalsDestinationArn :: Lens' ApiGatewayDeploymentAccessLogSetting (Maybe (Val Text))
agdalsDestinationArn = lens _apiGatewayDeploymentAccessLogSettingDestinationArn (\s a -> s { _apiGatewayDeploymentAccessLogSettingDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-accesslogsetting.html#cfn-apigateway-deployment-accesslogsetting-format
agdalsFormat :: Lens' ApiGatewayDeploymentAccessLogSetting (Maybe (Val Text))
agdalsFormat = lens _apiGatewayDeploymentAccessLogSettingFormat (\s a -> s { _apiGatewayDeploymentAccessLogSettingFormat = a })


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html

module Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides. See
-- 'apiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides' for a more
-- convenient constructor.
data ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides =
  ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides
  { _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesDescription :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesIntegrationMethod :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesPayloadFormatVersion :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesTimeoutInMillis :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides where
  toJSON ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesDescription
    , fmap (("IntegrationMethod",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesIntegrationMethod
    , fmap (("PayloadFormatVersion",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesPayloadFormatVersion
    , fmap (("TimeoutInMillis",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesTimeoutInMillis
    ]

-- | Constructor for
-- 'ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides' containing
-- required fields as arguments.
apiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides
  :: ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides
apiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides  =
  ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides
  { _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesDescription = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesIntegrationMethod = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesPayloadFormatVersion = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesTimeoutInMillis = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides-description
agvagmoioDescription :: Lens' ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides (Maybe (Val Text))
agvagmoioDescription = lens _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesDescription (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides-integrationmethod
agvagmoioIntegrationMethod :: Lens' ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides (Maybe (Val Text))
agvagmoioIntegrationMethod = lens _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesIntegrationMethod (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesIntegrationMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides-payloadformatversion
agvagmoioPayloadFormatVersion :: Lens' ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides (Maybe (Val Text))
agvagmoioPayloadFormatVersion = lens _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesPayloadFormatVersion (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesPayloadFormatVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integrationoverrides-timeoutinmillis
agvagmoioTimeoutInMillis :: Lens' ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides (Maybe (Val Integer))
agvagmoioTimeoutInMillis = lens _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesTimeoutInMillis (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesIntegrationOverridesTimeoutInMillis = a })


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-tlsconfig.html

module Stratosphere.ResourceProperties.ApiGatewayV2IntegrationTlsConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2IntegrationTlsConfig. See
-- 'apiGatewayV2IntegrationTlsConfig' for a more convenient constructor.
data ApiGatewayV2IntegrationTlsConfig =
  ApiGatewayV2IntegrationTlsConfig
  { _apiGatewayV2IntegrationTlsConfigServerNameToVerify :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2IntegrationTlsConfig where
  toJSON ApiGatewayV2IntegrationTlsConfig{..} =
    object $
    catMaybes
    [ fmap (("ServerNameToVerify",) . toJSON) _apiGatewayV2IntegrationTlsConfigServerNameToVerify
    ]

-- | Constructor for 'ApiGatewayV2IntegrationTlsConfig' containing required
-- fields as arguments.
apiGatewayV2IntegrationTlsConfig
  :: ApiGatewayV2IntegrationTlsConfig
apiGatewayV2IntegrationTlsConfig  =
  ApiGatewayV2IntegrationTlsConfig
  { _apiGatewayV2IntegrationTlsConfigServerNameToVerify = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-tlsconfig.html#cfn-apigatewayv2-integration-tlsconfig-servernametoverify
agvitcServerNameToVerify :: Lens' ApiGatewayV2IntegrationTlsConfig (Maybe (Val Text))
agvitcServerNameToVerify = lens _apiGatewayV2IntegrationTlsConfigServerNameToVerify (\s a -> s { _apiGatewayV2IntegrationTlsConfigServerNameToVerify = a })

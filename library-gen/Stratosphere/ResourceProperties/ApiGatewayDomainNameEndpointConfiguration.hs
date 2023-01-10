
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html

module Stratosphere.ResourceProperties.ApiGatewayDomainNameEndpointConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayDomainNameEndpointConfiguration.
-- See 'apiGatewayDomainNameEndpointConfiguration' for a more convenient
-- constructor.
data ApiGatewayDomainNameEndpointConfiguration =
  ApiGatewayDomainNameEndpointConfiguration
  { _apiGatewayDomainNameEndpointConfigurationTypes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDomainNameEndpointConfiguration where
  toJSON ApiGatewayDomainNameEndpointConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Types",) . toJSON) _apiGatewayDomainNameEndpointConfigurationTypes
    ]

-- | Constructor for 'ApiGatewayDomainNameEndpointConfiguration' containing
-- required fields as arguments.
apiGatewayDomainNameEndpointConfiguration
  :: ApiGatewayDomainNameEndpointConfiguration
apiGatewayDomainNameEndpointConfiguration  =
  ApiGatewayDomainNameEndpointConfiguration
  { _apiGatewayDomainNameEndpointConfigurationTypes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html#cfn-apigateway-domainname-endpointconfiguration-types
agdnecTypes :: Lens' ApiGatewayDomainNameEndpointConfiguration (Maybe (ValList Text))
agdnecTypes = lens _apiGatewayDomainNameEndpointConfigurationTypes (\s a -> s { _apiGatewayDomainNameEndpointConfigurationTypes = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html

module Stratosphere.ResourceProperties.ApiGatewayRestApiEndpointConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayRestApiEndpointConfiguration. See
-- 'apiGatewayRestApiEndpointConfiguration' for a more convenient
-- constructor.
data ApiGatewayRestApiEndpointConfiguration =
  ApiGatewayRestApiEndpointConfiguration
  { _apiGatewayRestApiEndpointConfigurationTypes :: Maybe (ValList Text)
  , _apiGatewayRestApiEndpointConfigurationVpcEndpointIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayRestApiEndpointConfiguration where
  toJSON ApiGatewayRestApiEndpointConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Types",) . toJSON) _apiGatewayRestApiEndpointConfigurationTypes
    , fmap (("VpcEndpointIds",) . toJSON) _apiGatewayRestApiEndpointConfigurationVpcEndpointIds
    ]

-- | Constructor for 'ApiGatewayRestApiEndpointConfiguration' containing
-- required fields as arguments.
apiGatewayRestApiEndpointConfiguration
  :: ApiGatewayRestApiEndpointConfiguration
apiGatewayRestApiEndpointConfiguration  =
  ApiGatewayRestApiEndpointConfiguration
  { _apiGatewayRestApiEndpointConfigurationTypes = Nothing
  , _apiGatewayRestApiEndpointConfigurationVpcEndpointIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-types
agraecTypes :: Lens' ApiGatewayRestApiEndpointConfiguration (Maybe (ValList Text))
agraecTypes = lens _apiGatewayRestApiEndpointConfigurationTypes (\s a -> s { _apiGatewayRestApiEndpointConfigurationTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-vpcendpointids
agraecVpcEndpointIds :: Lens' ApiGatewayRestApiEndpointConfiguration (Maybe (ValList Text))
agraecVpcEndpointIds = lens _apiGatewayRestApiEndpointConfigurationVpcEndpointIds (\s a -> s { _apiGatewayRestApiEndpointConfigurationVpcEndpointIds = a })

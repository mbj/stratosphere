{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
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
  } deriving (Show, Eq)

instance ToJSON ApiGatewayRestApiEndpointConfiguration where
  toJSON ApiGatewayRestApiEndpointConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Types",) . toJSON) _apiGatewayRestApiEndpointConfigurationTypes
    ]

instance FromJSON ApiGatewayRestApiEndpointConfiguration where
  parseJSON (Object obj) =
    ApiGatewayRestApiEndpointConfiguration <$>
      (obj .:? "Types")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayRestApiEndpointConfiguration' containing
-- required fields as arguments.
apiGatewayRestApiEndpointConfiguration
  :: ApiGatewayRestApiEndpointConfiguration
apiGatewayRestApiEndpointConfiguration  =
  ApiGatewayRestApiEndpointConfiguration
  { _apiGatewayRestApiEndpointConfigurationTypes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-types
agraecTypes :: Lens' ApiGatewayRestApiEndpointConfiguration (Maybe (ValList Text))
agraecTypes = lens _apiGatewayRestApiEndpointConfigurationTypes (\s a -> s { _apiGatewayRestApiEndpointConfigurationTypes = a })

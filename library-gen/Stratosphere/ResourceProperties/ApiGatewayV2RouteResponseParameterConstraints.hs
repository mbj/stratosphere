{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routeresponse-parameterconstraints.html

module Stratosphere.ResourceProperties.ApiGatewayV2RouteResponseParameterConstraints where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayV2RouteResponseParameterConstraints. See
-- 'apiGatewayV2RouteResponseParameterConstraints' for a more convenient
-- constructor.
data ApiGatewayV2RouteResponseParameterConstraints =
  ApiGatewayV2RouteResponseParameterConstraints
  { _apiGatewayV2RouteResponseParameterConstraintsRequired :: Val Bool
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2RouteResponseParameterConstraints where
  toJSON ApiGatewayV2RouteResponseParameterConstraints{..} =
    object $
    catMaybes
    [ (Just . ("Required",) . toJSON . fmap Bool') _apiGatewayV2RouteResponseParameterConstraintsRequired
    ]

instance FromJSON ApiGatewayV2RouteResponseParameterConstraints where
  parseJSON (Object obj) =
    ApiGatewayV2RouteResponseParameterConstraints <$>
      fmap (fmap unBool') (obj .: "Required")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2RouteResponseParameterConstraints'
-- containing required fields as arguments.
apiGatewayV2RouteResponseParameterConstraints
  :: Val Bool -- ^ 'agvrrpcRequired'
  -> ApiGatewayV2RouteResponseParameterConstraints
apiGatewayV2RouteResponseParameterConstraints requiredarg =
  ApiGatewayV2RouteResponseParameterConstraints
  { _apiGatewayV2RouteResponseParameterConstraintsRequired = requiredarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routeresponse-parameterconstraints.html#cfn-apigatewayv2-routeresponse-parameterconstraints-required
agvrrpcRequired :: Lens' ApiGatewayV2RouteResponseParameterConstraints (Val Bool)
agvrrpcRequired = lens _apiGatewayV2RouteResponseParameterConstraintsRequired (\s a -> s { _apiGatewayV2RouteResponseParameterConstraintsRequired = a })

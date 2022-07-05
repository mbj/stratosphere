{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html

module Stratosphere.Resources.ApiGatewayDocumentationPart where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayDocumentationPartLocation

-- | Full data type definition for ApiGatewayDocumentationPart. See
-- 'apiGatewayDocumentationPart' for a more convenient constructor.
data ApiGatewayDocumentationPart =
  ApiGatewayDocumentationPart
  { _apiGatewayDocumentationPartLocation :: ApiGatewayDocumentationPartLocation
  , _apiGatewayDocumentationPartProperties :: Val Text
  , _apiGatewayDocumentationPartRestApiId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayDocumentationPart where
  toResourceProperties ApiGatewayDocumentationPart{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::DocumentationPart"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Location",) . toJSON) _apiGatewayDocumentationPartLocation
        , (Just . ("Properties",) . toJSON) _apiGatewayDocumentationPartProperties
        , (Just . ("RestApiId",) . toJSON) _apiGatewayDocumentationPartRestApiId
        ]
    }

-- | Constructor for 'ApiGatewayDocumentationPart' containing required fields
-- as arguments.
apiGatewayDocumentationPart
  :: ApiGatewayDocumentationPartLocation -- ^ 'agdpLocation'
  -> Val Text -- ^ 'agdpProperties'
  -> Val Text -- ^ 'agdpRestApiId'
  -> ApiGatewayDocumentationPart
apiGatewayDocumentationPart locationarg propertiesarg restApiIdarg =
  ApiGatewayDocumentationPart
  { _apiGatewayDocumentationPartLocation = locationarg
  , _apiGatewayDocumentationPartProperties = propertiesarg
  , _apiGatewayDocumentationPartRestApiId = restApiIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html#cfn-apigateway-documentationpart-location
agdpLocation :: Lens' ApiGatewayDocumentationPart ApiGatewayDocumentationPartLocation
agdpLocation = lens _apiGatewayDocumentationPartLocation (\s a -> s { _apiGatewayDocumentationPartLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html#cfn-apigateway-documentationpart-properties
agdpProperties :: Lens' ApiGatewayDocumentationPart (Val Text)
agdpProperties = lens _apiGatewayDocumentationPartProperties (\s a -> s { _apiGatewayDocumentationPartProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html#cfn-apigateway-documentationpart-restapiid
agdpRestApiId :: Lens' ApiGatewayDocumentationPart (Val Text)
agdpRestApiId = lens _apiGatewayDocumentationPartRestApiId (\s a -> s { _apiGatewayDocumentationPartRestApiId = a })

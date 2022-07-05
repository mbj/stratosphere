{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html

module Stratosphere.Resources.ApiGatewayDocumentationVersion where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayDocumentationVersion. See
-- 'apiGatewayDocumentationVersion' for a more convenient constructor.
data ApiGatewayDocumentationVersion =
  ApiGatewayDocumentationVersion
  { _apiGatewayDocumentationVersionDescription :: Maybe (Val Text)
  , _apiGatewayDocumentationVersionDocumentationVersion :: Val Text
  , _apiGatewayDocumentationVersionRestApiId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayDocumentationVersion where
  toResourceProperties ApiGatewayDocumentationVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::DocumentationVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _apiGatewayDocumentationVersionDescription
        , (Just . ("DocumentationVersion",) . toJSON) _apiGatewayDocumentationVersionDocumentationVersion
        , (Just . ("RestApiId",) . toJSON) _apiGatewayDocumentationVersionRestApiId
        ]
    }

-- | Constructor for 'ApiGatewayDocumentationVersion' containing required
-- fields as arguments.
apiGatewayDocumentationVersion
  :: Val Text -- ^ 'agdvDocumentationVersion'
  -> Val Text -- ^ 'agdvRestApiId'
  -> ApiGatewayDocumentationVersion
apiGatewayDocumentationVersion documentationVersionarg restApiIdarg =
  ApiGatewayDocumentationVersion
  { _apiGatewayDocumentationVersionDescription = Nothing
  , _apiGatewayDocumentationVersionDocumentationVersion = documentationVersionarg
  , _apiGatewayDocumentationVersionRestApiId = restApiIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-description
agdvDescription :: Lens' ApiGatewayDocumentationVersion (Maybe (Val Text))
agdvDescription = lens _apiGatewayDocumentationVersionDescription (\s a -> s { _apiGatewayDocumentationVersionDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-documentationversion
agdvDocumentationVersion :: Lens' ApiGatewayDocumentationVersion (Val Text)
agdvDocumentationVersion = lens _apiGatewayDocumentationVersionDocumentationVersion (\s a -> s { _apiGatewayDocumentationVersionDocumentationVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationversion.html#cfn-apigateway-documentationversion-restapiid
agdvRestApiId :: Lens' ApiGatewayDocumentationVersion (Val Text)
agdvRestApiId = lens _apiGatewayDocumentationVersionRestApiId (\s a -> s { _apiGatewayDocumentationVersionRestApiId = a })

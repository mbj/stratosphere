{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html

module Stratosphere.Resources.ApiGatewayMethod where

import Stratosphere.ResourceImports
import Stratosphere.Types
import Stratosphere.ResourceProperties.ApiGatewayMethodIntegration
import Stratosphere.ResourceProperties.ApiGatewayMethodMethodResponse

-- | Full data type definition for ApiGatewayMethod. See 'apiGatewayMethod'
-- for a more convenient constructor.
data ApiGatewayMethod =
  ApiGatewayMethod
  { _apiGatewayMethodApiKeyRequired :: Maybe (Val Bool)
  , _apiGatewayMethodAuthorizationScopes :: Maybe (ValList Text)
  , _apiGatewayMethodAuthorizationType :: Maybe (Val AuthorizationType)
  , _apiGatewayMethodAuthorizerId :: Maybe (Val Text)
  , _apiGatewayMethodHttpMethod :: Val HttpMethod
  , _apiGatewayMethodIntegration :: Maybe ApiGatewayMethodIntegration
  , _apiGatewayMethodMethodResponses :: Maybe [ApiGatewayMethodMethodResponse]
  , _apiGatewayMethodOperationName :: Maybe (Val Text)
  , _apiGatewayMethodRequestModels :: Maybe Object
  , _apiGatewayMethodRequestParameters :: Maybe Object
  , _apiGatewayMethodRequestValidatorId :: Maybe (Val Text)
  , _apiGatewayMethodResourceId :: Val Text
  , _apiGatewayMethodRestApiId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayMethod where
  toResourceProperties ApiGatewayMethod{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::Method"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ApiKeyRequired",) . toJSON) _apiGatewayMethodApiKeyRequired
        , fmap (("AuthorizationScopes",) . toJSON) _apiGatewayMethodAuthorizationScopes
        , fmap (("AuthorizationType",) . toJSON) _apiGatewayMethodAuthorizationType
        , fmap (("AuthorizerId",) . toJSON) _apiGatewayMethodAuthorizerId
        , (Just . ("HttpMethod",) . toJSON) _apiGatewayMethodHttpMethod
        , fmap (("Integration",) . toJSON) _apiGatewayMethodIntegration
        , fmap (("MethodResponses",) . toJSON) _apiGatewayMethodMethodResponses
        , fmap (("OperationName",) . toJSON) _apiGatewayMethodOperationName
        , fmap (("RequestModels",) . toJSON) _apiGatewayMethodRequestModels
        , fmap (("RequestParameters",) . toJSON) _apiGatewayMethodRequestParameters
        , fmap (("RequestValidatorId",) . toJSON) _apiGatewayMethodRequestValidatorId
        , (Just . ("ResourceId",) . toJSON) _apiGatewayMethodResourceId
        , (Just . ("RestApiId",) . toJSON) _apiGatewayMethodRestApiId
        ]
    }

-- | Constructor for 'ApiGatewayMethod' containing required fields as
-- arguments.
apiGatewayMethod
  :: Val HttpMethod -- ^ 'agmeHttpMethod'
  -> Val Text -- ^ 'agmeResourceId'
  -> Val Text -- ^ 'agmeRestApiId'
  -> ApiGatewayMethod
apiGatewayMethod httpMethodarg resourceIdarg restApiIdarg =
  ApiGatewayMethod
  { _apiGatewayMethodApiKeyRequired = Nothing
  , _apiGatewayMethodAuthorizationScopes = Nothing
  , _apiGatewayMethodAuthorizationType = Nothing
  , _apiGatewayMethodAuthorizerId = Nothing
  , _apiGatewayMethodHttpMethod = httpMethodarg
  , _apiGatewayMethodIntegration = Nothing
  , _apiGatewayMethodMethodResponses = Nothing
  , _apiGatewayMethodOperationName = Nothing
  , _apiGatewayMethodRequestModels = Nothing
  , _apiGatewayMethodRequestParameters = Nothing
  , _apiGatewayMethodRequestValidatorId = Nothing
  , _apiGatewayMethodResourceId = resourceIdarg
  , _apiGatewayMethodRestApiId = restApiIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-apikeyrequired
agmeApiKeyRequired :: Lens' ApiGatewayMethod (Maybe (Val Bool))
agmeApiKeyRequired = lens _apiGatewayMethodApiKeyRequired (\s a -> s { _apiGatewayMethodApiKeyRequired = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizationscopes
agmeAuthorizationScopes :: Lens' ApiGatewayMethod (Maybe (ValList Text))
agmeAuthorizationScopes = lens _apiGatewayMethodAuthorizationScopes (\s a -> s { _apiGatewayMethodAuthorizationScopes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizationtype
agmeAuthorizationType :: Lens' ApiGatewayMethod (Maybe (Val AuthorizationType))
agmeAuthorizationType = lens _apiGatewayMethodAuthorizationType (\s a -> s { _apiGatewayMethodAuthorizationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizerid
agmeAuthorizerId :: Lens' ApiGatewayMethod (Maybe (Val Text))
agmeAuthorizerId = lens _apiGatewayMethodAuthorizerId (\s a -> s { _apiGatewayMethodAuthorizerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-httpmethod
agmeHttpMethod :: Lens' ApiGatewayMethod (Val HttpMethod)
agmeHttpMethod = lens _apiGatewayMethodHttpMethod (\s a -> s { _apiGatewayMethodHttpMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-integration
agmeIntegration :: Lens' ApiGatewayMethod (Maybe ApiGatewayMethodIntegration)
agmeIntegration = lens _apiGatewayMethodIntegration (\s a -> s { _apiGatewayMethodIntegration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-methodresponses
agmeMethodResponses :: Lens' ApiGatewayMethod (Maybe [ApiGatewayMethodMethodResponse])
agmeMethodResponses = lens _apiGatewayMethodMethodResponses (\s a -> s { _apiGatewayMethodMethodResponses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-operationname
agmeOperationName :: Lens' ApiGatewayMethod (Maybe (Val Text))
agmeOperationName = lens _apiGatewayMethodOperationName (\s a -> s { _apiGatewayMethodOperationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestmodels
agmeRequestModels :: Lens' ApiGatewayMethod (Maybe Object)
agmeRequestModels = lens _apiGatewayMethodRequestModels (\s a -> s { _apiGatewayMethodRequestModels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestparameters
agmeRequestParameters :: Lens' ApiGatewayMethod (Maybe Object)
agmeRequestParameters = lens _apiGatewayMethodRequestParameters (\s a -> s { _apiGatewayMethodRequestParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestvalidatorid
agmeRequestValidatorId :: Lens' ApiGatewayMethod (Maybe (Val Text))
agmeRequestValidatorId = lens _apiGatewayMethodRequestValidatorId (\s a -> s { _apiGatewayMethodRequestValidatorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-resourceid
agmeResourceId :: Lens' ApiGatewayMethod (Val Text)
agmeResourceId = lens _apiGatewayMethodResourceId (\s a -> s { _apiGatewayMethodResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-restapiid
agmeRestApiId :: Lens' ApiGatewayMethod (Val Text)
agmeRestApiId = lens _apiGatewayMethodRestApiId (\s a -> s { _apiGatewayMethodRestApiId = a })

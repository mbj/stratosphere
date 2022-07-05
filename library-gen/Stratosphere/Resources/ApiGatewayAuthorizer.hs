{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html

module Stratosphere.Resources.ApiGatewayAuthorizer where

import Stratosphere.ResourceImports
import Stratosphere.Types

-- | Full data type definition for ApiGatewayAuthorizer. See
-- 'apiGatewayAuthorizer' for a more convenient constructor.
data ApiGatewayAuthorizer =
  ApiGatewayAuthorizer
  { _apiGatewayAuthorizerAuthType :: Maybe (Val Text)
  , _apiGatewayAuthorizerAuthorizerCredentials :: Maybe (Val Text)
  , _apiGatewayAuthorizerAuthorizerResultTtlInSeconds :: Maybe (Val Integer)
  , _apiGatewayAuthorizerAuthorizerUri :: Maybe (Val Text)
  , _apiGatewayAuthorizerIdentitySource :: Maybe (Val Text)
  , _apiGatewayAuthorizerIdentityValidationExpression :: Maybe (Val Text)
  , _apiGatewayAuthorizerName :: Maybe (Val Text)
  , _apiGatewayAuthorizerProviderARNs :: Maybe (ValList Text)
  , _apiGatewayAuthorizerRestApiId :: Val Text
  , _apiGatewayAuthorizerType :: Val AuthorizerType
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayAuthorizer where
  toResourceProperties ApiGatewayAuthorizer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::Authorizer"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AuthType",) . toJSON) _apiGatewayAuthorizerAuthType
        , fmap (("AuthorizerCredentials",) . toJSON) _apiGatewayAuthorizerAuthorizerCredentials
        , fmap (("AuthorizerResultTtlInSeconds",) . toJSON) _apiGatewayAuthorizerAuthorizerResultTtlInSeconds
        , fmap (("AuthorizerUri",) . toJSON) _apiGatewayAuthorizerAuthorizerUri
        , fmap (("IdentitySource",) . toJSON) _apiGatewayAuthorizerIdentitySource
        , fmap (("IdentityValidationExpression",) . toJSON) _apiGatewayAuthorizerIdentityValidationExpression
        , fmap (("Name",) . toJSON) _apiGatewayAuthorizerName
        , fmap (("ProviderARNs",) . toJSON) _apiGatewayAuthorizerProviderARNs
        , (Just . ("RestApiId",) . toJSON) _apiGatewayAuthorizerRestApiId
        , (Just . ("Type",) . toJSON) _apiGatewayAuthorizerType
        ]
    }

-- | Constructor for 'ApiGatewayAuthorizer' containing required fields as
-- arguments.
apiGatewayAuthorizer
  :: Val Text -- ^ 'agaRestApiId'
  -> Val AuthorizerType -- ^ 'agaType'
  -> ApiGatewayAuthorizer
apiGatewayAuthorizer restApiIdarg typearg =
  ApiGatewayAuthorizer
  { _apiGatewayAuthorizerAuthType = Nothing
  , _apiGatewayAuthorizerAuthorizerCredentials = Nothing
  , _apiGatewayAuthorizerAuthorizerResultTtlInSeconds = Nothing
  , _apiGatewayAuthorizerAuthorizerUri = Nothing
  , _apiGatewayAuthorizerIdentitySource = Nothing
  , _apiGatewayAuthorizerIdentityValidationExpression = Nothing
  , _apiGatewayAuthorizerName = Nothing
  , _apiGatewayAuthorizerProviderARNs = Nothing
  , _apiGatewayAuthorizerRestApiId = restApiIdarg
  , _apiGatewayAuthorizerType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authtype
agaAuthType :: Lens' ApiGatewayAuthorizer (Maybe (Val Text))
agaAuthType = lens _apiGatewayAuthorizerAuthType (\s a -> s { _apiGatewayAuthorizerAuthType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authorizercredentials
agaAuthorizerCredentials :: Lens' ApiGatewayAuthorizer (Maybe (Val Text))
agaAuthorizerCredentials = lens _apiGatewayAuthorizerAuthorizerCredentials (\s a -> s { _apiGatewayAuthorizerAuthorizerCredentials = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authorizerresultttlinseconds
agaAuthorizerResultTtlInSeconds :: Lens' ApiGatewayAuthorizer (Maybe (Val Integer))
agaAuthorizerResultTtlInSeconds = lens _apiGatewayAuthorizerAuthorizerResultTtlInSeconds (\s a -> s { _apiGatewayAuthorizerAuthorizerResultTtlInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authorizeruri
agaAuthorizerUri :: Lens' ApiGatewayAuthorizer (Maybe (Val Text))
agaAuthorizerUri = lens _apiGatewayAuthorizerAuthorizerUri (\s a -> s { _apiGatewayAuthorizerAuthorizerUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-identitysource
agaIdentitySource :: Lens' ApiGatewayAuthorizer (Maybe (Val Text))
agaIdentitySource = lens _apiGatewayAuthorizerIdentitySource (\s a -> s { _apiGatewayAuthorizerIdentitySource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-identityvalidationexpression
agaIdentityValidationExpression :: Lens' ApiGatewayAuthorizer (Maybe (Val Text))
agaIdentityValidationExpression = lens _apiGatewayAuthorizerIdentityValidationExpression (\s a -> s { _apiGatewayAuthorizerIdentityValidationExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-name
agaName :: Lens' ApiGatewayAuthorizer (Maybe (Val Text))
agaName = lens _apiGatewayAuthorizerName (\s a -> s { _apiGatewayAuthorizerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-providerarns
agaProviderARNs :: Lens' ApiGatewayAuthorizer (Maybe (ValList Text))
agaProviderARNs = lens _apiGatewayAuthorizerProviderARNs (\s a -> s { _apiGatewayAuthorizerProviderARNs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-restapiid
agaRestApiId :: Lens' ApiGatewayAuthorizer (Val Text)
agaRestApiId = lens _apiGatewayAuthorizerRestApiId (\s a -> s { _apiGatewayAuthorizerRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-type
agaType :: Lens' ApiGatewayAuthorizer (Val AuthorizerType)
agaType = lens _apiGatewayAuthorizerType (\s a -> s { _apiGatewayAuthorizerType = a })

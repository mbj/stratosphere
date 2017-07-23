{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html

module Stratosphere.Resources.ApiGatewayAuthorizer where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for ApiGatewayAuthorizer. See
-- 'apiGatewayAuthorizer' for a more convenient constructor.
data ApiGatewayAuthorizer =
  ApiGatewayAuthorizer
  { _apiGatewayAuthorizerAuthorizerCredentials :: Maybe (Val Text)
  , _apiGatewayAuthorizerAuthorizerResultTtlInSeconds :: Maybe (Val Integer')
  , _apiGatewayAuthorizerAuthorizerUri :: Maybe (Val Text)
  , _apiGatewayAuthorizerIdentitySource :: Maybe (Val Text)
  , _apiGatewayAuthorizerIdentityValidationExpression :: Maybe (Val Text)
  , _apiGatewayAuthorizerName :: Maybe (Val Text)
  , _apiGatewayAuthorizerProviderARNs :: Maybe (ValList Text)
  , _apiGatewayAuthorizerRestApiId :: Maybe (Val Text)
  , _apiGatewayAuthorizerType :: Maybe (Val AuthorizerType)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayAuthorizer where
  toJSON ApiGatewayAuthorizer{..} =
    object $
    catMaybes
    [ ("AuthorizerCredentials" .=) <$> _apiGatewayAuthorizerAuthorizerCredentials
    , ("AuthorizerResultTtlInSeconds" .=) <$> _apiGatewayAuthorizerAuthorizerResultTtlInSeconds
    , ("AuthorizerUri" .=) <$> _apiGatewayAuthorizerAuthorizerUri
    , ("IdentitySource" .=) <$> _apiGatewayAuthorizerIdentitySource
    , ("IdentityValidationExpression" .=) <$> _apiGatewayAuthorizerIdentityValidationExpression
    , ("Name" .=) <$> _apiGatewayAuthorizerName
    , ("ProviderARNs" .=) <$> _apiGatewayAuthorizerProviderARNs
    , ("RestApiId" .=) <$> _apiGatewayAuthorizerRestApiId
    , ("Type" .=) <$> _apiGatewayAuthorizerType
    ]

instance FromJSON ApiGatewayAuthorizer where
  parseJSON (Object obj) =
    ApiGatewayAuthorizer <$>
      obj .:? "AuthorizerCredentials" <*>
      obj .:? "AuthorizerResultTtlInSeconds" <*>
      obj .:? "AuthorizerUri" <*>
      obj .:? "IdentitySource" <*>
      obj .:? "IdentityValidationExpression" <*>
      obj .:? "Name" <*>
      obj .:? "ProviderARNs" <*>
      obj .:? "RestApiId" <*>
      obj .:? "Type"
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayAuthorizer' containing required fields as
-- arguments.
apiGatewayAuthorizer
  :: ApiGatewayAuthorizer
apiGatewayAuthorizer  =
  ApiGatewayAuthorizer
  { _apiGatewayAuthorizerAuthorizerCredentials = Nothing
  , _apiGatewayAuthorizerAuthorizerResultTtlInSeconds = Nothing
  , _apiGatewayAuthorizerAuthorizerUri = Nothing
  , _apiGatewayAuthorizerIdentitySource = Nothing
  , _apiGatewayAuthorizerIdentityValidationExpression = Nothing
  , _apiGatewayAuthorizerName = Nothing
  , _apiGatewayAuthorizerProviderARNs = Nothing
  , _apiGatewayAuthorizerRestApiId = Nothing
  , _apiGatewayAuthorizerType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authorizercredentials
agaAuthorizerCredentials :: Lens' ApiGatewayAuthorizer (Maybe (Val Text))
agaAuthorizerCredentials = lens _apiGatewayAuthorizerAuthorizerCredentials (\s a -> s { _apiGatewayAuthorizerAuthorizerCredentials = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-authorizerresultttlinseconds
agaAuthorizerResultTtlInSeconds :: Lens' ApiGatewayAuthorizer (Maybe (Val Integer'))
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
agaRestApiId :: Lens' ApiGatewayAuthorizer (Maybe (Val Text))
agaRestApiId = lens _apiGatewayAuthorizerRestApiId (\s a -> s { _apiGatewayAuthorizerRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-authorizer.html#cfn-apigateway-authorizer-type
agaType :: Lens' ApiGatewayAuthorizer (Maybe (Val AuthorizerType))
agaType = lens _apiGatewayAuthorizerType (\s a -> s { _apiGatewayAuthorizerType = a })

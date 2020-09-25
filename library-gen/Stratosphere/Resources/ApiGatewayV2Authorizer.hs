{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html

module Stratosphere.Resources.ApiGatewayV2Authorizer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayV2AuthorizerJWTConfiguration

-- | Full data type definition for ApiGatewayV2Authorizer. See
-- 'apiGatewayV2Authorizer' for a more convenient constructor.
data ApiGatewayV2Authorizer =
  ApiGatewayV2Authorizer
  { _apiGatewayV2AuthorizerApiId :: Val Text
  , _apiGatewayV2AuthorizerAuthorizerCredentialsArn :: Maybe (Val Text)
  , _apiGatewayV2AuthorizerAuthorizerPayloadFormatVersion :: Maybe (Val Text)
  , _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds :: Maybe (Val Integer)
  , _apiGatewayV2AuthorizerAuthorizerType :: Val Text
  , _apiGatewayV2AuthorizerAuthorizerUri :: Maybe (Val Text)
  , _apiGatewayV2AuthorizerEnableSimpleResponses :: Maybe (Val Bool)
  , _apiGatewayV2AuthorizerIdentitySource :: ValList Text
  , _apiGatewayV2AuthorizerIdentityValidationExpression :: Maybe (Val Text)
  , _apiGatewayV2AuthorizerJwtConfiguration :: Maybe ApiGatewayV2AuthorizerJWTConfiguration
  , _apiGatewayV2AuthorizerName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2Authorizer where
  toResourceProperties ApiGatewayV2Authorizer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::Authorizer"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("ApiId",) . toJSON) _apiGatewayV2AuthorizerApiId
        , fmap (("AuthorizerCredentialsArn",) . toJSON) _apiGatewayV2AuthorizerAuthorizerCredentialsArn
        , fmap (("AuthorizerPayloadFormatVersion",) . toJSON) _apiGatewayV2AuthorizerAuthorizerPayloadFormatVersion
        , fmap (("AuthorizerResultTtlInSeconds",) . toJSON) _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds
        , (Just . ("AuthorizerType",) . toJSON) _apiGatewayV2AuthorizerAuthorizerType
        , fmap (("AuthorizerUri",) . toJSON) _apiGatewayV2AuthorizerAuthorizerUri
        , fmap (("EnableSimpleResponses",) . toJSON) _apiGatewayV2AuthorizerEnableSimpleResponses
        , (Just . ("IdentitySource",) . toJSON) _apiGatewayV2AuthorizerIdentitySource
        , fmap (("IdentityValidationExpression",) . toJSON) _apiGatewayV2AuthorizerIdentityValidationExpression
        , fmap (("JwtConfiguration",) . toJSON) _apiGatewayV2AuthorizerJwtConfiguration
        , (Just . ("Name",) . toJSON) _apiGatewayV2AuthorizerName
        ]
    }

-- | Constructor for 'ApiGatewayV2Authorizer' containing required fields as
-- arguments.
apiGatewayV2Authorizer
  :: Val Text -- ^ 'agvauApiId'
  -> Val Text -- ^ 'agvauAuthorizerType'
  -> ValList Text -- ^ 'agvauIdentitySource'
  -> Val Text -- ^ 'agvauName'
  -> ApiGatewayV2Authorizer
apiGatewayV2Authorizer apiIdarg authorizerTypearg identitySourcearg namearg =
  ApiGatewayV2Authorizer
  { _apiGatewayV2AuthorizerApiId = apiIdarg
  , _apiGatewayV2AuthorizerAuthorizerCredentialsArn = Nothing
  , _apiGatewayV2AuthorizerAuthorizerPayloadFormatVersion = Nothing
  , _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds = Nothing
  , _apiGatewayV2AuthorizerAuthorizerType = authorizerTypearg
  , _apiGatewayV2AuthorizerAuthorizerUri = Nothing
  , _apiGatewayV2AuthorizerEnableSimpleResponses = Nothing
  , _apiGatewayV2AuthorizerIdentitySource = identitySourcearg
  , _apiGatewayV2AuthorizerIdentityValidationExpression = Nothing
  , _apiGatewayV2AuthorizerJwtConfiguration = Nothing
  , _apiGatewayV2AuthorizerName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-apiid
agvauApiId :: Lens' ApiGatewayV2Authorizer (Val Text)
agvauApiId = lens _apiGatewayV2AuthorizerApiId (\s a -> s { _apiGatewayV2AuthorizerApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizercredentialsarn
agvauAuthorizerCredentialsArn :: Lens' ApiGatewayV2Authorizer (Maybe (Val Text))
agvauAuthorizerCredentialsArn = lens _apiGatewayV2AuthorizerAuthorizerCredentialsArn (\s a -> s { _apiGatewayV2AuthorizerAuthorizerCredentialsArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizerpayloadformatversion
agvauAuthorizerPayloadFormatVersion :: Lens' ApiGatewayV2Authorizer (Maybe (Val Text))
agvauAuthorizerPayloadFormatVersion = lens _apiGatewayV2AuthorizerAuthorizerPayloadFormatVersion (\s a -> s { _apiGatewayV2AuthorizerAuthorizerPayloadFormatVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizerresultttlinseconds
agvauAuthorizerResultTtlInSeconds :: Lens' ApiGatewayV2Authorizer (Maybe (Val Integer))
agvauAuthorizerResultTtlInSeconds = lens _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds (\s a -> s { _apiGatewayV2AuthorizerAuthorizerResultTtlInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizertype
agvauAuthorizerType :: Lens' ApiGatewayV2Authorizer (Val Text)
agvauAuthorizerType = lens _apiGatewayV2AuthorizerAuthorizerType (\s a -> s { _apiGatewayV2AuthorizerAuthorizerType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-authorizeruri
agvauAuthorizerUri :: Lens' ApiGatewayV2Authorizer (Maybe (Val Text))
agvauAuthorizerUri = lens _apiGatewayV2AuthorizerAuthorizerUri (\s a -> s { _apiGatewayV2AuthorizerAuthorizerUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-enablesimpleresponses
agvauEnableSimpleResponses :: Lens' ApiGatewayV2Authorizer (Maybe (Val Bool))
agvauEnableSimpleResponses = lens _apiGatewayV2AuthorizerEnableSimpleResponses (\s a -> s { _apiGatewayV2AuthorizerEnableSimpleResponses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-identitysource
agvauIdentitySource :: Lens' ApiGatewayV2Authorizer (ValList Text)
agvauIdentitySource = lens _apiGatewayV2AuthorizerIdentitySource (\s a -> s { _apiGatewayV2AuthorizerIdentitySource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-identityvalidationexpression
agvauIdentityValidationExpression :: Lens' ApiGatewayV2Authorizer (Maybe (Val Text))
agvauIdentityValidationExpression = lens _apiGatewayV2AuthorizerIdentityValidationExpression (\s a -> s { _apiGatewayV2AuthorizerIdentityValidationExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-jwtconfiguration
agvauJwtConfiguration :: Lens' ApiGatewayV2Authorizer (Maybe ApiGatewayV2AuthorizerJWTConfiguration)
agvauJwtConfiguration = lens _apiGatewayV2AuthorizerJwtConfiguration (\s a -> s { _apiGatewayV2AuthorizerJwtConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-authorizer.html#cfn-apigatewayv2-authorizer-name
agvauName :: Lens' ApiGatewayV2Authorizer (Val Text)
agvauName = lens _apiGatewayV2AuthorizerName (\s a -> s { _apiGatewayV2AuthorizerName = a })

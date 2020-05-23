{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html

module Stratosphere.Resources.ApiGatewayV2Api where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayV2ApiBodyS3Location
import Stratosphere.ResourceProperties.ApiGatewayV2ApiCors

-- | Full data type definition for ApiGatewayV2Api. See 'apiGatewayV2Api' for
-- a more convenient constructor.
data ApiGatewayV2Api =
  ApiGatewayV2Api
  { _apiGatewayV2ApiApiKeySelectionExpression :: Maybe (Val Text)
  , _apiGatewayV2ApiBasePath :: Maybe (Val Text)
  , _apiGatewayV2ApiBody :: Maybe Object
  , _apiGatewayV2ApiBodyS3Location :: Maybe ApiGatewayV2ApiBodyS3Location
  , _apiGatewayV2ApiCorsConfiguration :: Maybe ApiGatewayV2ApiCors
  , _apiGatewayV2ApiCredentialsArn :: Maybe (Val Text)
  , _apiGatewayV2ApiDescription :: Maybe (Val Text)
  , _apiGatewayV2ApiDisableExecuteApiEndpoint :: Maybe (Val Bool)
  , _apiGatewayV2ApiDisableSchemaValidation :: Maybe (Val Bool)
  , _apiGatewayV2ApiFailOnWarnings :: Maybe (Val Bool)
  , _apiGatewayV2ApiName :: Maybe (Val Text)
  , _apiGatewayV2ApiProtocolType :: Maybe (Val Text)
  , _apiGatewayV2ApiRouteKey :: Maybe (Val Text)
  , _apiGatewayV2ApiRouteSelectionExpression :: Maybe (Val Text)
  , _apiGatewayV2ApiTags :: Maybe Object
  , _apiGatewayV2ApiTarget :: Maybe (Val Text)
  , _apiGatewayV2ApiVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2Api where
  toResourceProperties ApiGatewayV2Api{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::Api"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("ApiKeySelectionExpression",) . toJSON) _apiGatewayV2ApiApiKeySelectionExpression
        , fmap (("BasePath",) . toJSON) _apiGatewayV2ApiBasePath
        , fmap (("Body",) . toJSON) _apiGatewayV2ApiBody
        , fmap (("BodyS3Location",) . toJSON) _apiGatewayV2ApiBodyS3Location
        , fmap (("CorsConfiguration",) . toJSON) _apiGatewayV2ApiCorsConfiguration
        , fmap (("CredentialsArn",) . toJSON) _apiGatewayV2ApiCredentialsArn
        , fmap (("Description",) . toJSON) _apiGatewayV2ApiDescription
        , fmap (("DisableExecuteApiEndpoint",) . toJSON) _apiGatewayV2ApiDisableExecuteApiEndpoint
        , fmap (("DisableSchemaValidation",) . toJSON) _apiGatewayV2ApiDisableSchemaValidation
        , fmap (("FailOnWarnings",) . toJSON) _apiGatewayV2ApiFailOnWarnings
        , fmap (("Name",) . toJSON) _apiGatewayV2ApiName
        , fmap (("ProtocolType",) . toJSON) _apiGatewayV2ApiProtocolType
        , fmap (("RouteKey",) . toJSON) _apiGatewayV2ApiRouteKey
        , fmap (("RouteSelectionExpression",) . toJSON) _apiGatewayV2ApiRouteSelectionExpression
        , fmap (("Tags",) . toJSON) _apiGatewayV2ApiTags
        , fmap (("Target",) . toJSON) _apiGatewayV2ApiTarget
        , fmap (("Version",) . toJSON) _apiGatewayV2ApiVersion
        ]
    }

-- | Constructor for 'ApiGatewayV2Api' containing required fields as
-- arguments.
apiGatewayV2Api
  :: ApiGatewayV2Api
apiGatewayV2Api  =
  ApiGatewayV2Api
  { _apiGatewayV2ApiApiKeySelectionExpression = Nothing
  , _apiGatewayV2ApiBasePath = Nothing
  , _apiGatewayV2ApiBody = Nothing
  , _apiGatewayV2ApiBodyS3Location = Nothing
  , _apiGatewayV2ApiCorsConfiguration = Nothing
  , _apiGatewayV2ApiCredentialsArn = Nothing
  , _apiGatewayV2ApiDescription = Nothing
  , _apiGatewayV2ApiDisableExecuteApiEndpoint = Nothing
  , _apiGatewayV2ApiDisableSchemaValidation = Nothing
  , _apiGatewayV2ApiFailOnWarnings = Nothing
  , _apiGatewayV2ApiName = Nothing
  , _apiGatewayV2ApiProtocolType = Nothing
  , _apiGatewayV2ApiRouteKey = Nothing
  , _apiGatewayV2ApiRouteSelectionExpression = Nothing
  , _apiGatewayV2ApiTags = Nothing
  , _apiGatewayV2ApiTarget = Nothing
  , _apiGatewayV2ApiVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-apikeyselectionexpression
agvapApiKeySelectionExpression :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapApiKeySelectionExpression = lens _apiGatewayV2ApiApiKeySelectionExpression (\s a -> s { _apiGatewayV2ApiApiKeySelectionExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-basepath
agvapBasePath :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapBasePath = lens _apiGatewayV2ApiBasePath (\s a -> s { _apiGatewayV2ApiBasePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-body
agvapBody :: Lens' ApiGatewayV2Api (Maybe Object)
agvapBody = lens _apiGatewayV2ApiBody (\s a -> s { _apiGatewayV2ApiBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-bodys3location
agvapBodyS3Location :: Lens' ApiGatewayV2Api (Maybe ApiGatewayV2ApiBodyS3Location)
agvapBodyS3Location = lens _apiGatewayV2ApiBodyS3Location (\s a -> s { _apiGatewayV2ApiBodyS3Location = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-corsconfiguration
agvapCorsConfiguration :: Lens' ApiGatewayV2Api (Maybe ApiGatewayV2ApiCors)
agvapCorsConfiguration = lens _apiGatewayV2ApiCorsConfiguration (\s a -> s { _apiGatewayV2ApiCorsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-credentialsarn
agvapCredentialsArn :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapCredentialsArn = lens _apiGatewayV2ApiCredentialsArn (\s a -> s { _apiGatewayV2ApiCredentialsArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-description
agvapDescription :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapDescription = lens _apiGatewayV2ApiDescription (\s a -> s { _apiGatewayV2ApiDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-disableexecuteapiendpoint
agvapDisableExecuteApiEndpoint :: Lens' ApiGatewayV2Api (Maybe (Val Bool))
agvapDisableExecuteApiEndpoint = lens _apiGatewayV2ApiDisableExecuteApiEndpoint (\s a -> s { _apiGatewayV2ApiDisableExecuteApiEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-disableschemavalidation
agvapDisableSchemaValidation :: Lens' ApiGatewayV2Api (Maybe (Val Bool))
agvapDisableSchemaValidation = lens _apiGatewayV2ApiDisableSchemaValidation (\s a -> s { _apiGatewayV2ApiDisableSchemaValidation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-failonwarnings
agvapFailOnWarnings :: Lens' ApiGatewayV2Api (Maybe (Val Bool))
agvapFailOnWarnings = lens _apiGatewayV2ApiFailOnWarnings (\s a -> s { _apiGatewayV2ApiFailOnWarnings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-name
agvapName :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapName = lens _apiGatewayV2ApiName (\s a -> s { _apiGatewayV2ApiName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-protocoltype
agvapProtocolType :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapProtocolType = lens _apiGatewayV2ApiProtocolType (\s a -> s { _apiGatewayV2ApiProtocolType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-routekey
agvapRouteKey :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapRouteKey = lens _apiGatewayV2ApiRouteKey (\s a -> s { _apiGatewayV2ApiRouteKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-routeselectionexpression
agvapRouteSelectionExpression :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapRouteSelectionExpression = lens _apiGatewayV2ApiRouteSelectionExpression (\s a -> s { _apiGatewayV2ApiRouteSelectionExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-tags
agvapTags :: Lens' ApiGatewayV2Api (Maybe Object)
agvapTags = lens _apiGatewayV2ApiTags (\s a -> s { _apiGatewayV2ApiTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-target
agvapTarget :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapTarget = lens _apiGatewayV2ApiTarget (\s a -> s { _apiGatewayV2ApiTarget = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-version
agvapVersion :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapVersion = lens _apiGatewayV2ApiVersion (\s a -> s { _apiGatewayV2ApiVersion = a })

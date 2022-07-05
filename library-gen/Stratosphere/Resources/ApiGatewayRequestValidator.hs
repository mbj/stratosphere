{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html

module Stratosphere.Resources.ApiGatewayRequestValidator where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayRequestValidator. See
-- 'apiGatewayRequestValidator' for a more convenient constructor.
data ApiGatewayRequestValidator =
  ApiGatewayRequestValidator
  { _apiGatewayRequestValidatorName :: Maybe (Val Text)
  , _apiGatewayRequestValidatorRestApiId :: Val Text
  , _apiGatewayRequestValidatorValidateRequestBody :: Maybe (Val Bool)
  , _apiGatewayRequestValidatorValidateRequestParameters :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayRequestValidator where
  toResourceProperties ApiGatewayRequestValidator{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::RequestValidator"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Name",) . toJSON) _apiGatewayRequestValidatorName
        , (Just . ("RestApiId",) . toJSON) _apiGatewayRequestValidatorRestApiId
        , fmap (("ValidateRequestBody",) . toJSON) _apiGatewayRequestValidatorValidateRequestBody
        , fmap (("ValidateRequestParameters",) . toJSON) _apiGatewayRequestValidatorValidateRequestParameters
        ]
    }

-- | Constructor for 'ApiGatewayRequestValidator' containing required fields
-- as arguments.
apiGatewayRequestValidator
  :: Val Text -- ^ 'agrvRestApiId'
  -> ApiGatewayRequestValidator
apiGatewayRequestValidator restApiIdarg =
  ApiGatewayRequestValidator
  { _apiGatewayRequestValidatorName = Nothing
  , _apiGatewayRequestValidatorRestApiId = restApiIdarg
  , _apiGatewayRequestValidatorValidateRequestBody = Nothing
  , _apiGatewayRequestValidatorValidateRequestParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-name
agrvName :: Lens' ApiGatewayRequestValidator (Maybe (Val Text))
agrvName = lens _apiGatewayRequestValidatorName (\s a -> s { _apiGatewayRequestValidatorName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-restapiid
agrvRestApiId :: Lens' ApiGatewayRequestValidator (Val Text)
agrvRestApiId = lens _apiGatewayRequestValidatorRestApiId (\s a -> s { _apiGatewayRequestValidatorRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-validaterequestbody
agrvValidateRequestBody :: Lens' ApiGatewayRequestValidator (Maybe (Val Bool))
agrvValidateRequestBody = lens _apiGatewayRequestValidatorValidateRequestBody (\s a -> s { _apiGatewayRequestValidatorValidateRequestBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html#cfn-apigateway-requestvalidator-validaterequestparameters
agrvValidateRequestParameters :: Lens' ApiGatewayRequestValidator (Maybe (Val Bool))
agrvValidateRequestParameters = lens _apiGatewayRequestValidatorValidateRequestParameters (\s a -> s { _apiGatewayRequestValidatorValidateRequestParameters = a })

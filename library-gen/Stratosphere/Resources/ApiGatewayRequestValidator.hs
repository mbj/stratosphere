{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-requestvalidator.html

module Stratosphere.Resources.ApiGatewayRequestValidator where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayRequestValidator. See
-- 'apiGatewayRequestValidator' for a more convenient constructor.
data ApiGatewayRequestValidator =
  ApiGatewayRequestValidator
  { _apiGatewayRequestValidatorName :: Maybe (Val Text)
  , _apiGatewayRequestValidatorRestApiId :: Val Text
  , _apiGatewayRequestValidatorValidateRequestBody :: Maybe (Val Bool)
  , _apiGatewayRequestValidatorValidateRequestParameters :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayRequestValidator where
  toJSON ApiGatewayRequestValidator{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _apiGatewayRequestValidatorName
    , (Just . ("RestApiId",) . toJSON) _apiGatewayRequestValidatorRestApiId
    , fmap (("ValidateRequestBody",) . toJSON . fmap Bool') _apiGatewayRequestValidatorValidateRequestBody
    , fmap (("ValidateRequestParameters",) . toJSON . fmap Bool') _apiGatewayRequestValidatorValidateRequestParameters
    ]

instance FromJSON ApiGatewayRequestValidator where
  parseJSON (Object obj) =
    ApiGatewayRequestValidator <$>
      (obj .:? "Name") <*>
      (obj .: "RestApiId") <*>
      fmap (fmap (fmap unBool')) (obj .:? "ValidateRequestBody") <*>
      fmap (fmap (fmap unBool')) (obj .:? "ValidateRequestParameters")
  parseJSON _ = mempty

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

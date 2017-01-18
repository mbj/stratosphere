{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html

module Stratosphere.Resources.ApiGatewayMethod where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.ApiGatewayMethodIntegration
import Stratosphere.ResourceProperties.ApiGatewayMethodMethodResponse

-- | Full data type definition for ApiGatewayMethod. See 'apiGatewayMethod'
-- | for a more convenient constructor.
data ApiGatewayMethod =
  ApiGatewayMethod
  { _apiGatewayMethodApiKeyRequired :: Maybe (Val Bool')
  , _apiGatewayMethodAuthorizationType :: Maybe (Val AuthorizationType)
  , _apiGatewayMethodAuthorizerId :: Maybe (Val Text)
  , _apiGatewayMethodHttpMethod :: Val HttpMethod
  , _apiGatewayMethodIntegration :: Maybe ApiGatewayMethodIntegration
  , _apiGatewayMethodMethodResponses :: Maybe [ApiGatewayMethodMethodResponse]
  , _apiGatewayMethodRequestModels :: Maybe Object
  , _apiGatewayMethodRequestParameters :: Maybe Object
  , _apiGatewayMethodResourceId :: Maybe (Val Text)
  , _apiGatewayMethodRestApiId :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ApiGatewayMethod where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON ApiGatewayMethod where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'ApiGatewayMethod' containing required fields as
-- | arguments.
apiGatewayMethod
  :: Val HttpMethod -- ^ 'agmeHttpMethod'
  -> ApiGatewayMethod
apiGatewayMethod httpMethodarg =
  ApiGatewayMethod
  { _apiGatewayMethodApiKeyRequired = Nothing
  , _apiGatewayMethodAuthorizationType = Nothing
  , _apiGatewayMethodAuthorizerId = Nothing
  , _apiGatewayMethodHttpMethod = httpMethodarg
  , _apiGatewayMethodIntegration = Nothing
  , _apiGatewayMethodMethodResponses = Nothing
  , _apiGatewayMethodRequestModels = Nothing
  , _apiGatewayMethodRequestParameters = Nothing
  , _apiGatewayMethodResourceId = Nothing
  , _apiGatewayMethodRestApiId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-apikeyrequired
agmeApiKeyRequired :: Lens' ApiGatewayMethod (Maybe (Val Bool'))
agmeApiKeyRequired = lens _apiGatewayMethodApiKeyRequired (\s a -> s { _apiGatewayMethodApiKeyRequired = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestmodels
agmeRequestModels :: Lens' ApiGatewayMethod (Maybe Object)
agmeRequestModels = lens _apiGatewayMethodRequestModels (\s a -> s { _apiGatewayMethodRequestModels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestparameters
agmeRequestParameters :: Lens' ApiGatewayMethod (Maybe Object)
agmeRequestParameters = lens _apiGatewayMethodRequestParameters (\s a -> s { _apiGatewayMethodRequestParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-resourceid
agmeResourceId :: Lens' ApiGatewayMethod (Maybe (Val Text))
agmeResourceId = lens _apiGatewayMethodResourceId (\s a -> s { _apiGatewayMethodResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-restapiid
agmeRestApiId :: Lens' ApiGatewayMethod (Maybe (Val Text))
agmeRestApiId = lens _apiGatewayMethodRestApiId (\s a -> s { _apiGatewayMethodRestApiId = a })

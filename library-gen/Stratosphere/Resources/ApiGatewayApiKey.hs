{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html

module Stratosphere.Resources.ApiGatewayApiKey where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayApiKeyStageKey

-- | Full data type definition for ApiGatewayApiKey. See 'apiGatewayApiKey'
-- for a more convenient constructor.
data ApiGatewayApiKey =
  ApiGatewayApiKey
  { _apiGatewayApiKeyCustomerId :: Maybe (Val Text)
  , _apiGatewayApiKeyDescription :: Maybe (Val Text)
  , _apiGatewayApiKeyEnabled :: Maybe (Val Bool)
  , _apiGatewayApiKeyGenerateDistinctId :: Maybe (Val Bool)
  , _apiGatewayApiKeyName :: Maybe (Val Text)
  , _apiGatewayApiKeyStageKeys :: Maybe [ApiGatewayApiKeyStageKey]
  , _apiGatewayApiKeyValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayApiKey where
  toJSON ApiGatewayApiKey{..} =
    object $
    catMaybes
    [ fmap (("CustomerId",) . toJSON) _apiGatewayApiKeyCustomerId
    , fmap (("Description",) . toJSON) _apiGatewayApiKeyDescription
    , fmap (("Enabled",) . toJSON . fmap Bool') _apiGatewayApiKeyEnabled
    , fmap (("GenerateDistinctId",) . toJSON . fmap Bool') _apiGatewayApiKeyGenerateDistinctId
    , fmap (("Name",) . toJSON) _apiGatewayApiKeyName
    , fmap (("StageKeys",) . toJSON) _apiGatewayApiKeyStageKeys
    , fmap (("Value",) . toJSON) _apiGatewayApiKeyValue
    ]

instance FromJSON ApiGatewayApiKey where
  parseJSON (Object obj) =
    ApiGatewayApiKey <$>
      (obj .:? "CustomerId") <*>
      (obj .:? "Description") <*>
      fmap (fmap (fmap unBool')) (obj .:? "Enabled") <*>
      fmap (fmap (fmap unBool')) (obj .:? "GenerateDistinctId") <*>
      (obj .:? "Name") <*>
      (obj .:? "StageKeys") <*>
      (obj .:? "Value")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayApiKey' containing required fields as
-- arguments.
apiGatewayApiKey
  :: ApiGatewayApiKey
apiGatewayApiKey  =
  ApiGatewayApiKey
  { _apiGatewayApiKeyCustomerId = Nothing
  , _apiGatewayApiKeyDescription = Nothing
  , _apiGatewayApiKeyEnabled = Nothing
  , _apiGatewayApiKeyGenerateDistinctId = Nothing
  , _apiGatewayApiKeyName = Nothing
  , _apiGatewayApiKeyStageKeys = Nothing
  , _apiGatewayApiKeyValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-customerid
agakCustomerId :: Lens' ApiGatewayApiKey (Maybe (Val Text))
agakCustomerId = lens _apiGatewayApiKeyCustomerId (\s a -> s { _apiGatewayApiKeyCustomerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-description
agakDescription :: Lens' ApiGatewayApiKey (Maybe (Val Text))
agakDescription = lens _apiGatewayApiKeyDescription (\s a -> s { _apiGatewayApiKeyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-enabled
agakEnabled :: Lens' ApiGatewayApiKey (Maybe (Val Bool))
agakEnabled = lens _apiGatewayApiKeyEnabled (\s a -> s { _apiGatewayApiKeyEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-generatedistinctid
agakGenerateDistinctId :: Lens' ApiGatewayApiKey (Maybe (Val Bool))
agakGenerateDistinctId = lens _apiGatewayApiKeyGenerateDistinctId (\s a -> s { _apiGatewayApiKeyGenerateDistinctId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-name
agakName :: Lens' ApiGatewayApiKey (Maybe (Val Text))
agakName = lens _apiGatewayApiKeyName (\s a -> s { _apiGatewayApiKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-stagekeys
agakStageKeys :: Lens' ApiGatewayApiKey (Maybe [ApiGatewayApiKeyStageKey])
agakStageKeys = lens _apiGatewayApiKeyStageKeys (\s a -> s { _apiGatewayApiKeyStageKeys = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-value
agakValue :: Lens' ApiGatewayApiKey (Maybe (Val Text))
agakValue = lens _apiGatewayApiKeyValue (\s a -> s { _apiGatewayApiKeyValue = a })

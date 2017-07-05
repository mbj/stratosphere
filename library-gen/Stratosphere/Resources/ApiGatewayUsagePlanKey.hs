{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html

module Stratosphere.Resources.ApiGatewayUsagePlanKey where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayUsagePlanKey. See
-- 'apiGatewayUsagePlanKey' for a more convenient constructor.
data ApiGatewayUsagePlanKey =
  ApiGatewayUsagePlanKey
  { _apiGatewayUsagePlanKeyKeyId :: Val Text
  , _apiGatewayUsagePlanKeyKeyType :: Val Text
  , _apiGatewayUsagePlanKeyUsagePlanId :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApiGatewayUsagePlanKey where
  toJSON ApiGatewayUsagePlanKey{..} =
    object $
    catMaybes
    [ Just ("KeyId" .= _apiGatewayUsagePlanKeyKeyId)
    , Just ("KeyType" .= _apiGatewayUsagePlanKeyKeyType)
    , Just ("UsagePlanId" .= _apiGatewayUsagePlanKeyUsagePlanId)
    ]

instance FromJSON ApiGatewayUsagePlanKey where
  parseJSON (Object obj) =
    ApiGatewayUsagePlanKey <$>
      obj .: "KeyId" <*>
      obj .: "KeyType" <*>
      obj .: "UsagePlanId"
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayUsagePlanKey' containing required fields as
-- arguments.
apiGatewayUsagePlanKey
  :: Val Text -- ^ 'agupkKeyId'
  -> Val Text -- ^ 'agupkKeyType'
  -> Val Text -- ^ 'agupkUsagePlanId'
  -> ApiGatewayUsagePlanKey
apiGatewayUsagePlanKey keyIdarg keyTypearg usagePlanIdarg =
  ApiGatewayUsagePlanKey
  { _apiGatewayUsagePlanKeyKeyId = keyIdarg
  , _apiGatewayUsagePlanKeyKeyType = keyTypearg
  , _apiGatewayUsagePlanKeyUsagePlanId = usagePlanIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-keyid
agupkKeyId :: Lens' ApiGatewayUsagePlanKey (Val Text)
agupkKeyId = lens _apiGatewayUsagePlanKeyKeyId (\s a -> s { _apiGatewayUsagePlanKeyKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-keytype
agupkKeyType :: Lens' ApiGatewayUsagePlanKey (Val Text)
agupkKeyType = lens _apiGatewayUsagePlanKeyKeyType (\s a -> s { _apiGatewayUsagePlanKeyKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-usageplanid
agupkUsagePlanId :: Lens' ApiGatewayUsagePlanKey (Val Text)
agupkUsagePlanId = lens _apiGatewayUsagePlanKeyUsagePlanId (\s a -> s { _apiGatewayUsagePlanKeyUsagePlanId = a })

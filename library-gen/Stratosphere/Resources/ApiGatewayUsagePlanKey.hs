{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html

module Stratosphere.Resources.ApiGatewayUsagePlanKey where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayUsagePlanKey. See
-- 'apiGatewayUsagePlanKey' for a more convenient constructor.
data ApiGatewayUsagePlanKey =
  ApiGatewayUsagePlanKey
  { _apiGatewayUsagePlanKeyKeyId :: Val Text
  , _apiGatewayUsagePlanKeyKeyType :: Val Text
  , _apiGatewayUsagePlanKeyUsagePlanId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayUsagePlanKey where
  toResourceProperties ApiGatewayUsagePlanKey{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::UsagePlanKey"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("KeyId",) . toJSON) _apiGatewayUsagePlanKeyKeyId
        , (Just . ("KeyType",) . toJSON) _apiGatewayUsagePlanKeyKeyType
        , (Just . ("UsagePlanId",) . toJSON) _apiGatewayUsagePlanKeyUsagePlanId
        ]
    }

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


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html

module Stratosphere.ResourceProperties.ApiGatewayApiKeyStageKey where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayApiKeyStageKey. See
-- 'apiGatewayApiKeyStageKey' for a more convenient constructor.
data ApiGatewayApiKeyStageKey =
  ApiGatewayApiKeyStageKey
  { _apiGatewayApiKeyStageKeyRestApiId :: Maybe (Val Text)
  , _apiGatewayApiKeyStageKeyStageName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayApiKeyStageKey where
  toJSON ApiGatewayApiKeyStageKey{..} =
    object $
    catMaybes
    [ fmap (("RestApiId",) . toJSON) _apiGatewayApiKeyStageKeyRestApiId
    , fmap (("StageName",) . toJSON) _apiGatewayApiKeyStageKeyStageName
    ]

-- | Constructor for 'ApiGatewayApiKeyStageKey' containing required fields as
-- arguments.
apiGatewayApiKeyStageKey
  :: ApiGatewayApiKeyStageKey
apiGatewayApiKeyStageKey  =
  ApiGatewayApiKeyStageKey
  { _apiGatewayApiKeyStageKeyRestApiId = Nothing
  , _apiGatewayApiKeyStageKeyStageName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html#cfn-apigateway-apikey-stagekey-restapiid
agakskRestApiId :: Lens' ApiGatewayApiKeyStageKey (Maybe (Val Text))
agakskRestApiId = lens _apiGatewayApiKeyStageKeyRestApiId (\s a -> s { _apiGatewayApiKeyStageKeyRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html#cfn-apigateway-apikey-stagekey-stagename
agakskStageName :: Lens' ApiGatewayApiKeyStageKey (Maybe (Val Text))
agakskStageName = lens _apiGatewayApiKeyStageKeyStageName (\s a -> s { _apiGatewayApiKeyStageKeyStageName = a })

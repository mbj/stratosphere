{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | ApiStage is a property of the AWS::ApiGateway::UsagePlan resource that
-- specifies which Amazon API Gateway (API Gateway) stages and APIs to
-- associate with a usage plan.

module Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayUsagePlanApiStage. See
-- 'apiGatewayUsagePlanApiStage' for a more convenient constructor.
data ApiGatewayUsagePlanApiStage =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId :: Maybe (Val Text)
  , _apiGatewayUsagePlanApiStageStage :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayUsagePlanApiStage where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON ApiGatewayUsagePlanApiStage where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'ApiGatewayUsagePlanApiStage' containing required fields
-- as arguments.
apiGatewayUsagePlanApiStage
  :: ApiGatewayUsagePlanApiStage
apiGatewayUsagePlanApiStage  =
  ApiGatewayUsagePlanApiStage
  { _apiGatewayUsagePlanApiStageApiId = Nothing
  , _apiGatewayUsagePlanApiStageStage = Nothing
  }

-- | The ID of an API that is in the specified Stage property that you want to
-- associate with the usage plan.
agupasApiId :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Val Text))
agupasApiId = lens _apiGatewayUsagePlanApiStageApiId (\s a -> s { _apiGatewayUsagePlanApiStageApiId = a })

-- | The name of an API Gateway stage to associate with the usage plan.
agupasStage :: Lens' ApiGatewayUsagePlanApiStage (Maybe (Val Text))
agupasStage = lens _apiGatewayUsagePlanApiStageStage (\s a -> s { _apiGatewayUsagePlanApiStageStage = a })
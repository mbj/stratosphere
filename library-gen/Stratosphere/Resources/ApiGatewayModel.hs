{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html

module Stratosphere.Resources.ApiGatewayModel where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayModel. See 'apiGatewayModel' for
-- a more convenient constructor.
data ApiGatewayModel =
  ApiGatewayModel
  { _apiGatewayModelContentType :: Maybe (Val Text)
  , _apiGatewayModelDescription :: Maybe (Val Text)
  , _apiGatewayModelName :: Maybe (Val Text)
  , _apiGatewayModelRestApiId :: Val Text
  , _apiGatewayModelSchema :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON ApiGatewayModel where
  toJSON ApiGatewayModel{..} =
    object $
    catMaybes
    [ fmap (("ContentType",) . toJSON) _apiGatewayModelContentType
    , fmap (("Description",) . toJSON) _apiGatewayModelDescription
    , fmap (("Name",) . toJSON) _apiGatewayModelName
    , (Just . ("RestApiId",) . toJSON) _apiGatewayModelRestApiId
    , fmap (("Schema",) . toJSON) _apiGatewayModelSchema
    ]

instance FromJSON ApiGatewayModel where
  parseJSON (Object obj) =
    ApiGatewayModel <$>
      (obj .:? "ContentType") <*>
      (obj .:? "Description") <*>
      (obj .:? "Name") <*>
      (obj .: "RestApiId") <*>
      (obj .:? "Schema")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayModel' containing required fields as
-- arguments.
apiGatewayModel
  :: Val Text -- ^ 'agmoRestApiId'
  -> ApiGatewayModel
apiGatewayModel restApiIdarg =
  ApiGatewayModel
  { _apiGatewayModelContentType = Nothing
  , _apiGatewayModelDescription = Nothing
  , _apiGatewayModelName = Nothing
  , _apiGatewayModelRestApiId = restApiIdarg
  , _apiGatewayModelSchema = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-contenttype
agmoContentType :: Lens' ApiGatewayModel (Maybe (Val Text))
agmoContentType = lens _apiGatewayModelContentType (\s a -> s { _apiGatewayModelContentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-description
agmoDescription :: Lens' ApiGatewayModel (Maybe (Val Text))
agmoDescription = lens _apiGatewayModelDescription (\s a -> s { _apiGatewayModelDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-name
agmoName :: Lens' ApiGatewayModel (Maybe (Val Text))
agmoName = lens _apiGatewayModelName (\s a -> s { _apiGatewayModelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-restapiid
agmoRestApiId :: Lens' ApiGatewayModel (Val Text)
agmoRestApiId = lens _apiGatewayModelRestApiId (\s a -> s { _apiGatewayModelRestApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-schema
agmoSchema :: Lens' ApiGatewayModel (Maybe Object)
agmoSchema = lens _apiGatewayModelSchema (\s a -> s { _apiGatewayModelSchema = a })

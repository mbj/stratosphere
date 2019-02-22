{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html

module Stratosphere.Resources.ApiGatewayV2Model where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2Model. See 'apiGatewayV2Model'
-- for a more convenient constructor.
data ApiGatewayV2Model =
  ApiGatewayV2Model
  { _apiGatewayV2ModelApiId :: Val Text
  , _apiGatewayV2ModelContentType :: Maybe (Val Text)
  , _apiGatewayV2ModelDescription :: Maybe (Val Text)
  , _apiGatewayV2ModelName :: Val Text
  , _apiGatewayV2ModelSchema :: Object
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2Model where
  toJSON ApiGatewayV2Model{..} =
    object $
    catMaybes
    [ (Just . ("ApiId",) . toJSON) _apiGatewayV2ModelApiId
    , fmap (("ContentType",) . toJSON) _apiGatewayV2ModelContentType
    , fmap (("Description",) . toJSON) _apiGatewayV2ModelDescription
    , (Just . ("Name",) . toJSON) _apiGatewayV2ModelName
    , (Just . ("Schema",) . toJSON) _apiGatewayV2ModelSchema
    ]

instance FromJSON ApiGatewayV2Model where
  parseJSON (Object obj) =
    ApiGatewayV2Model <$>
      (obj .: "ApiId") <*>
      (obj .:? "ContentType") <*>
      (obj .:? "Description") <*>
      (obj .: "Name") <*>
      (obj .: "Schema")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2Model' containing required fields as
-- arguments.
apiGatewayV2Model
  :: Val Text -- ^ 'agvmApiId'
  -> Val Text -- ^ 'agvmName'
  -> Object -- ^ 'agvmSchema'
  -> ApiGatewayV2Model
apiGatewayV2Model apiIdarg namearg schemaarg =
  ApiGatewayV2Model
  { _apiGatewayV2ModelApiId = apiIdarg
  , _apiGatewayV2ModelContentType = Nothing
  , _apiGatewayV2ModelDescription = Nothing
  , _apiGatewayV2ModelName = namearg
  , _apiGatewayV2ModelSchema = schemaarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-apiid
agvmApiId :: Lens' ApiGatewayV2Model (Val Text)
agvmApiId = lens _apiGatewayV2ModelApiId (\s a -> s { _apiGatewayV2ModelApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-contenttype
agvmContentType :: Lens' ApiGatewayV2Model (Maybe (Val Text))
agvmContentType = lens _apiGatewayV2ModelContentType (\s a -> s { _apiGatewayV2ModelContentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-description
agvmDescription :: Lens' ApiGatewayV2Model (Maybe (Val Text))
agvmDescription = lens _apiGatewayV2ModelDescription (\s a -> s { _apiGatewayV2ModelDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-name
agvmName :: Lens' ApiGatewayV2Model (Val Text)
agvmName = lens _apiGatewayV2ModelName (\s a -> s { _apiGatewayV2ModelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-schema
agvmSchema :: Lens' ApiGatewayV2Model Object
agvmSchema = lens _apiGatewayV2ModelSchema (\s a -> s { _apiGatewayV2ModelSchema = a })

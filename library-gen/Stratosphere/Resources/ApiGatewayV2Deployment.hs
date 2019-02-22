{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html

module Stratosphere.Resources.ApiGatewayV2Deployment where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2Deployment. See
-- 'apiGatewayV2Deployment' for a more convenient constructor.
data ApiGatewayV2Deployment =
  ApiGatewayV2Deployment
  { _apiGatewayV2DeploymentApiId :: Val Text
  , _apiGatewayV2DeploymentDescription :: Maybe (Val Text)
  , _apiGatewayV2DeploymentStageName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2Deployment where
  toJSON ApiGatewayV2Deployment{..} =
    object $
    catMaybes
    [ (Just . ("ApiId",) . toJSON) _apiGatewayV2DeploymentApiId
    , fmap (("Description",) . toJSON) _apiGatewayV2DeploymentDescription
    , fmap (("StageName",) . toJSON) _apiGatewayV2DeploymentStageName
    ]

instance FromJSON ApiGatewayV2Deployment where
  parseJSON (Object obj) =
    ApiGatewayV2Deployment <$>
      (obj .: "ApiId") <*>
      (obj .:? "Description") <*>
      (obj .:? "StageName")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2Deployment' containing required fields as
-- arguments.
apiGatewayV2Deployment
  :: Val Text -- ^ 'agvdApiId'
  -> ApiGatewayV2Deployment
apiGatewayV2Deployment apiIdarg =
  ApiGatewayV2Deployment
  { _apiGatewayV2DeploymentApiId = apiIdarg
  , _apiGatewayV2DeploymentDescription = Nothing
  , _apiGatewayV2DeploymentStageName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-apiid
agvdApiId :: Lens' ApiGatewayV2Deployment (Val Text)
agvdApiId = lens _apiGatewayV2DeploymentApiId (\s a -> s { _apiGatewayV2DeploymentApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-description
agvdDescription :: Lens' ApiGatewayV2Deployment (Maybe (Val Text))
agvdDescription = lens _apiGatewayV2DeploymentDescription (\s a -> s { _apiGatewayV2DeploymentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-stagename
agvdStageName :: Lens' ApiGatewayV2Deployment (Maybe (Val Text))
agvdStageName = lens _apiGatewayV2DeploymentStageName (\s a -> s { _apiGatewayV2DeploymentStageName = a })

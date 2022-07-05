{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html

module Stratosphere.Resources.ApiGatewayV2ApiGatewayManagedOverrides where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides
import Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides
import Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesStageOverrides

-- | Full data type definition for ApiGatewayV2ApiGatewayManagedOverrides. See
-- 'apiGatewayV2ApiGatewayManagedOverrides' for a more convenient
-- constructor.
data ApiGatewayV2ApiGatewayManagedOverrides =
  ApiGatewayV2ApiGatewayManagedOverrides
  { _apiGatewayV2ApiGatewayManagedOverridesApiId :: Val Text
  , _apiGatewayV2ApiGatewayManagedOverridesIntegration :: Maybe ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides
  , _apiGatewayV2ApiGatewayManagedOverridesRoute :: Maybe ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides
  , _apiGatewayV2ApiGatewayManagedOverridesStage :: Maybe ApiGatewayV2ApiGatewayManagedOverridesStageOverrides
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2ApiGatewayManagedOverrides where
  toResourceProperties ApiGatewayV2ApiGatewayManagedOverrides{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::ApiGatewayManagedOverrides"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiId",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesApiId
        , fmap (("Integration",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesIntegration
        , fmap (("Route",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRoute
        , fmap (("Stage",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesStage
        ]
    }

-- | Constructor for 'ApiGatewayV2ApiGatewayManagedOverrides' containing
-- required fields as arguments.
apiGatewayV2ApiGatewayManagedOverrides
  :: Val Text -- ^ 'agvagmoApiId'
  -> ApiGatewayV2ApiGatewayManagedOverrides
apiGatewayV2ApiGatewayManagedOverrides apiIdarg =
  ApiGatewayV2ApiGatewayManagedOverrides
  { _apiGatewayV2ApiGatewayManagedOverridesApiId = apiIdarg
  , _apiGatewayV2ApiGatewayManagedOverridesIntegration = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRoute = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesStage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-apiid
agvagmoApiId :: Lens' ApiGatewayV2ApiGatewayManagedOverrides (Val Text)
agvagmoApiId = lens _apiGatewayV2ApiGatewayManagedOverridesApiId (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-integration
agvagmoIntegration :: Lens' ApiGatewayV2ApiGatewayManagedOverrides (Maybe ApiGatewayV2ApiGatewayManagedOverridesIntegrationOverrides)
agvagmoIntegration = lens _apiGatewayV2ApiGatewayManagedOverridesIntegration (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesIntegration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-route
agvagmoRoute :: Lens' ApiGatewayV2ApiGatewayManagedOverrides (Maybe ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides)
agvagmoRoute = lens _apiGatewayV2ApiGatewayManagedOverridesRoute (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRoute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-apigatewaymanagedoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-stage
agvagmoStage :: Lens' ApiGatewayV2ApiGatewayManagedOverrides (Maybe ApiGatewayV2ApiGatewayManagedOverridesStageOverrides)
agvagmoStage = lens _apiGatewayV2ApiGatewayManagedOverridesStage (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesStage = a })

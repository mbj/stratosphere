{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-vpclink.html

module Stratosphere.Resources.ApiGatewayV2VpcLink where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2VpcLink. See
-- 'apiGatewayV2VpcLink' for a more convenient constructor.
data ApiGatewayV2VpcLink =
  ApiGatewayV2VpcLink
  { _apiGatewayV2VpcLinkName :: Val Text
  , _apiGatewayV2VpcLinkSecurityGroupIds :: Maybe (ValList Text)
  , _apiGatewayV2VpcLinkSubnetIds :: ValList Text
  , _apiGatewayV2VpcLinkTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2VpcLink where
  toResourceProperties ApiGatewayV2VpcLink{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::VpcLink"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _apiGatewayV2VpcLinkName
        , fmap (("SecurityGroupIds",) . toJSON) _apiGatewayV2VpcLinkSecurityGroupIds
        , (Just . ("SubnetIds",) . toJSON) _apiGatewayV2VpcLinkSubnetIds
        , fmap (("Tags",) . toJSON) _apiGatewayV2VpcLinkTags
        ]
    }

-- | Constructor for 'ApiGatewayV2VpcLink' containing required fields as
-- arguments.
apiGatewayV2VpcLink
  :: Val Text -- ^ 'agvvlName'
  -> ValList Text -- ^ 'agvvlSubnetIds'
  -> ApiGatewayV2VpcLink
apiGatewayV2VpcLink namearg subnetIdsarg =
  ApiGatewayV2VpcLink
  { _apiGatewayV2VpcLinkName = namearg
  , _apiGatewayV2VpcLinkSecurityGroupIds = Nothing
  , _apiGatewayV2VpcLinkSubnetIds = subnetIdsarg
  , _apiGatewayV2VpcLinkTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-vpclink.html#cfn-apigatewayv2-vpclink-name
agvvlName :: Lens' ApiGatewayV2VpcLink (Val Text)
agvvlName = lens _apiGatewayV2VpcLinkName (\s a -> s { _apiGatewayV2VpcLinkName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-vpclink.html#cfn-apigatewayv2-vpclink-securitygroupids
agvvlSecurityGroupIds :: Lens' ApiGatewayV2VpcLink (Maybe (ValList Text))
agvvlSecurityGroupIds = lens _apiGatewayV2VpcLinkSecurityGroupIds (\s a -> s { _apiGatewayV2VpcLinkSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-vpclink.html#cfn-apigatewayv2-vpclink-subnetids
agvvlSubnetIds :: Lens' ApiGatewayV2VpcLink (ValList Text)
agvvlSubnetIds = lens _apiGatewayV2VpcLinkSubnetIds (\s a -> s { _apiGatewayV2VpcLinkSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-vpclink.html#cfn-apigatewayv2-vpclink-tags
agvvlTags :: Lens' ApiGatewayV2VpcLink (Maybe Object)
agvvlTags = lens _apiGatewayV2VpcLinkTags (\s a -> s { _apiGatewayV2VpcLinkTags = a })

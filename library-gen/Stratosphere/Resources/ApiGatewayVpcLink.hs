{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html

module Stratosphere.Resources.ApiGatewayVpcLink where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayVpcLink. See 'apiGatewayVpcLink'
-- for a more convenient constructor.
data ApiGatewayVpcLink =
  ApiGatewayVpcLink
  { _apiGatewayVpcLinkDescription :: Maybe (Val Text)
  , _apiGatewayVpcLinkName :: Val Text
  , _apiGatewayVpcLinkTargetArns :: ValList Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayVpcLink where
  toResourceProperties ApiGatewayVpcLink{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::VpcLink"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _apiGatewayVpcLinkDescription
        , (Just . ("Name",) . toJSON) _apiGatewayVpcLinkName
        , (Just . ("TargetArns",) . toJSON) _apiGatewayVpcLinkTargetArns
        ]
    }

-- | Constructor for 'ApiGatewayVpcLink' containing required fields as
-- arguments.
apiGatewayVpcLink
  :: Val Text -- ^ 'agvlName'
  -> ValList Text -- ^ 'agvlTargetArns'
  -> ApiGatewayVpcLink
apiGatewayVpcLink namearg targetArnsarg =
  ApiGatewayVpcLink
  { _apiGatewayVpcLinkDescription = Nothing
  , _apiGatewayVpcLinkName = namearg
  , _apiGatewayVpcLinkTargetArns = targetArnsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-description
agvlDescription :: Lens' ApiGatewayVpcLink (Maybe (Val Text))
agvlDescription = lens _apiGatewayVpcLinkDescription (\s a -> s { _apiGatewayVpcLinkDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-name
agvlName :: Lens' ApiGatewayVpcLink (Val Text)
agvlName = lens _apiGatewayVpcLinkName (\s a -> s { _apiGatewayVpcLinkName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-targetarns
agvlTargetArns :: Lens' ApiGatewayVpcLink (ValList Text)
agvlTargetArns = lens _apiGatewayVpcLinkTargetArns (\s a -> s { _apiGatewayVpcLinkTargetArns = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html

module Stratosphere.Resources.AppMeshVirtualGateway where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewaySpec
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AppMeshVirtualGateway. See
-- 'appMeshVirtualGateway' for a more convenient constructor.
data AppMeshVirtualGateway =
  AppMeshVirtualGateway
  { _appMeshVirtualGatewayMeshName :: Val Text
  , _appMeshVirtualGatewayMeshOwner :: Maybe (Val Text)
  , _appMeshVirtualGatewaySpec :: AppMeshVirtualGatewayVirtualGatewaySpec
  , _appMeshVirtualGatewayTags :: Maybe [Tag]
  , _appMeshVirtualGatewayVirtualGatewayName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppMeshVirtualGateway where
  toResourceProperties AppMeshVirtualGateway{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppMesh::VirtualGateway"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MeshName",) . toJSON) _appMeshVirtualGatewayMeshName
        , fmap (("MeshOwner",) . toJSON) _appMeshVirtualGatewayMeshOwner
        , (Just . ("Spec",) . toJSON) _appMeshVirtualGatewaySpec
        , fmap (("Tags",) . toJSON) _appMeshVirtualGatewayTags
        , (Just . ("VirtualGatewayName",) . toJSON) _appMeshVirtualGatewayVirtualGatewayName
        ]
    }

-- | Constructor for 'AppMeshVirtualGateway' containing required fields as
-- arguments.
appMeshVirtualGateway
  :: Val Text -- ^ 'amvgMeshName'
  -> AppMeshVirtualGatewayVirtualGatewaySpec -- ^ 'amvgSpec'
  -> Val Text -- ^ 'amvgVirtualGatewayName'
  -> AppMeshVirtualGateway
appMeshVirtualGateway meshNamearg specarg virtualGatewayNamearg =
  AppMeshVirtualGateway
  { _appMeshVirtualGatewayMeshName = meshNamearg
  , _appMeshVirtualGatewayMeshOwner = Nothing
  , _appMeshVirtualGatewaySpec = specarg
  , _appMeshVirtualGatewayTags = Nothing
  , _appMeshVirtualGatewayVirtualGatewayName = virtualGatewayNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-meshname
amvgMeshName :: Lens' AppMeshVirtualGateway (Val Text)
amvgMeshName = lens _appMeshVirtualGatewayMeshName (\s a -> s { _appMeshVirtualGatewayMeshName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-meshowner
amvgMeshOwner :: Lens' AppMeshVirtualGateway (Maybe (Val Text))
amvgMeshOwner = lens _appMeshVirtualGatewayMeshOwner (\s a -> s { _appMeshVirtualGatewayMeshOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-spec
amvgSpec :: Lens' AppMeshVirtualGateway AppMeshVirtualGatewayVirtualGatewaySpec
amvgSpec = lens _appMeshVirtualGatewaySpec (\s a -> s { _appMeshVirtualGatewaySpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-tags
amvgTags :: Lens' AppMeshVirtualGateway (Maybe [Tag])
amvgTags = lens _appMeshVirtualGatewayTags (\s a -> s { _appMeshVirtualGatewayTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualgateway.html#cfn-appmesh-virtualgateway-virtualgatewayname
amvgVirtualGatewayName :: Lens' AppMeshVirtualGateway (Val Text)
amvgVirtualGatewayName = lens _appMeshVirtualGatewayVirtualGatewayName (\s a -> s { _appMeshVirtualGatewayVirtualGatewayName = a })

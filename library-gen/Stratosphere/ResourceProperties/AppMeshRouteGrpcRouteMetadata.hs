{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadata.html

module Stratosphere.ResourceProperties.AppMeshRouteGrpcRouteMetadata where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteGrpcRouteMetadataMatchMethod

-- | Full data type definition for AppMeshRouteGrpcRouteMetadata. See
-- 'appMeshRouteGrpcRouteMetadata' for a more convenient constructor.
data AppMeshRouteGrpcRouteMetadata =
  AppMeshRouteGrpcRouteMetadata
  { _appMeshRouteGrpcRouteMetadataInvert :: Maybe (Val Bool)
  , _appMeshRouteGrpcRouteMetadataMatch :: Maybe AppMeshRouteGrpcRouteMetadataMatchMethod
  , _appMeshRouteGrpcRouteMetadataName :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteGrpcRouteMetadata where
  toJSON AppMeshRouteGrpcRouteMetadata{..} =
    object $
    catMaybes
    [ fmap (("Invert",) . toJSON) _appMeshRouteGrpcRouteMetadataInvert
    , fmap (("Match",) . toJSON) _appMeshRouteGrpcRouteMetadataMatch
    , (Just . ("Name",) . toJSON) _appMeshRouteGrpcRouteMetadataName
    ]

-- | Constructor for 'AppMeshRouteGrpcRouteMetadata' containing required
-- fields as arguments.
appMeshRouteGrpcRouteMetadata
  :: Val Text -- ^ 'amrgrmName'
  -> AppMeshRouteGrpcRouteMetadata
appMeshRouteGrpcRouteMetadata namearg =
  AppMeshRouteGrpcRouteMetadata
  { _appMeshRouteGrpcRouteMetadataInvert = Nothing
  , _appMeshRouteGrpcRouteMetadataMatch = Nothing
  , _appMeshRouteGrpcRouteMetadataName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadata.html#cfn-appmesh-route-grpcroutemetadata-invert
amrgrmInvert :: Lens' AppMeshRouteGrpcRouteMetadata (Maybe (Val Bool))
amrgrmInvert = lens _appMeshRouteGrpcRouteMetadataInvert (\s a -> s { _appMeshRouteGrpcRouteMetadataInvert = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadata.html#cfn-appmesh-route-grpcroutemetadata-match
amrgrmMatch :: Lens' AppMeshRouteGrpcRouteMetadata (Maybe AppMeshRouteGrpcRouteMetadataMatchMethod)
amrgrmMatch = lens _appMeshRouteGrpcRouteMetadataMatch (\s a -> s { _appMeshRouteGrpcRouteMetadataMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadata.html#cfn-appmesh-route-grpcroutemetadata-name
amrgrmName :: Lens' AppMeshRouteGrpcRouteMetadata (Val Text)
amrgrmName = lens _appMeshRouteGrpcRouteMetadataName (\s a -> s { _appMeshRouteGrpcRouteMetadataName = a })

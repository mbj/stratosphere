{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html

module Stratosphere.ResourceProperties.AppMeshRouteGrpcRouteMatch where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteGrpcRouteMetadata

-- | Full data type definition for AppMeshRouteGrpcRouteMatch. See
-- 'appMeshRouteGrpcRouteMatch' for a more convenient constructor.
data AppMeshRouteGrpcRouteMatch =
  AppMeshRouteGrpcRouteMatch
  { _appMeshRouteGrpcRouteMatchMetadata :: Maybe [AppMeshRouteGrpcRouteMetadata]
  , _appMeshRouteGrpcRouteMatchMethodName :: Maybe (Val Text)
  , _appMeshRouteGrpcRouteMatchServiceName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteGrpcRouteMatch where
  toJSON AppMeshRouteGrpcRouteMatch{..} =
    object $
    catMaybes
    [ fmap (("Metadata",) . toJSON) _appMeshRouteGrpcRouteMatchMetadata
    , fmap (("MethodName",) . toJSON) _appMeshRouteGrpcRouteMatchMethodName
    , fmap (("ServiceName",) . toJSON) _appMeshRouteGrpcRouteMatchServiceName
    ]

-- | Constructor for 'AppMeshRouteGrpcRouteMatch' containing required fields
-- as arguments.
appMeshRouteGrpcRouteMatch
  :: AppMeshRouteGrpcRouteMatch
appMeshRouteGrpcRouteMatch  =
  AppMeshRouteGrpcRouteMatch
  { _appMeshRouteGrpcRouteMatchMetadata = Nothing
  , _appMeshRouteGrpcRouteMatchMethodName = Nothing
  , _appMeshRouteGrpcRouteMatchServiceName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html#cfn-appmesh-route-grpcroutematch-metadata
amrgrmMetadata :: Lens' AppMeshRouteGrpcRouteMatch (Maybe [AppMeshRouteGrpcRouteMetadata])
amrgrmMetadata = lens _appMeshRouteGrpcRouteMatchMetadata (\s a -> s { _appMeshRouteGrpcRouteMatchMetadata = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html#cfn-appmesh-route-grpcroutematch-methodname
amrgrmMethodName :: Lens' AppMeshRouteGrpcRouteMatch (Maybe (Val Text))
amrgrmMethodName = lens _appMeshRouteGrpcRouteMatchMethodName (\s a -> s { _appMeshRouteGrpcRouteMatchMethodName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html#cfn-appmesh-route-grpcroutematch-servicename
amrgrmServiceName :: Lens' AppMeshRouteGrpcRouteMatch (Maybe (Val Text))
amrgrmServiceName = lens _appMeshRouteGrpcRouteMatchServiceName (\s a -> s { _appMeshRouteGrpcRouteMatchServiceName = a })

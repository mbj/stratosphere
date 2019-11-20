{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html

module Stratosphere.ResourceProperties.AppMeshRouteGrpcRouteMetadataMatchMethod where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteMatchRange

-- | Full data type definition for AppMeshRouteGrpcRouteMetadataMatchMethod.
-- See 'appMeshRouteGrpcRouteMetadataMatchMethod' for a more convenient
-- constructor.
data AppMeshRouteGrpcRouteMetadataMatchMethod =
  AppMeshRouteGrpcRouteMetadataMatchMethod
  { _appMeshRouteGrpcRouteMetadataMatchMethodExact :: Maybe (Val Text)
  , _appMeshRouteGrpcRouteMetadataMatchMethodPrefix :: Maybe (Val Text)
  , _appMeshRouteGrpcRouteMetadataMatchMethodRange :: Maybe AppMeshRouteMatchRange
  , _appMeshRouteGrpcRouteMetadataMatchMethodRegex :: Maybe (Val Text)
  , _appMeshRouteGrpcRouteMetadataMatchMethodSuffix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteGrpcRouteMetadataMatchMethod where
  toJSON AppMeshRouteGrpcRouteMetadataMatchMethod{..} =
    object $
    catMaybes
    [ fmap (("Exact",) . toJSON) _appMeshRouteGrpcRouteMetadataMatchMethodExact
    , fmap (("Prefix",) . toJSON) _appMeshRouteGrpcRouteMetadataMatchMethodPrefix
    , fmap (("Range",) . toJSON) _appMeshRouteGrpcRouteMetadataMatchMethodRange
    , fmap (("Regex",) . toJSON) _appMeshRouteGrpcRouteMetadataMatchMethodRegex
    , fmap (("Suffix",) . toJSON) _appMeshRouteGrpcRouteMetadataMatchMethodSuffix
    ]

-- | Constructor for 'AppMeshRouteGrpcRouteMetadataMatchMethod' containing
-- required fields as arguments.
appMeshRouteGrpcRouteMetadataMatchMethod
  :: AppMeshRouteGrpcRouteMetadataMatchMethod
appMeshRouteGrpcRouteMetadataMatchMethod  =
  AppMeshRouteGrpcRouteMetadataMatchMethod
  { _appMeshRouteGrpcRouteMetadataMatchMethodExact = Nothing
  , _appMeshRouteGrpcRouteMetadataMatchMethodPrefix = Nothing
  , _appMeshRouteGrpcRouteMetadataMatchMethodRange = Nothing
  , _appMeshRouteGrpcRouteMetadataMatchMethodRegex = Nothing
  , _appMeshRouteGrpcRouteMetadataMatchMethodSuffix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-exact
amrgrmmmExact :: Lens' AppMeshRouteGrpcRouteMetadataMatchMethod (Maybe (Val Text))
amrgrmmmExact = lens _appMeshRouteGrpcRouteMetadataMatchMethodExact (\s a -> s { _appMeshRouteGrpcRouteMetadataMatchMethodExact = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-prefix
amrgrmmmPrefix :: Lens' AppMeshRouteGrpcRouteMetadataMatchMethod (Maybe (Val Text))
amrgrmmmPrefix = lens _appMeshRouteGrpcRouteMetadataMatchMethodPrefix (\s a -> s { _appMeshRouteGrpcRouteMetadataMatchMethodPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-range
amrgrmmmRange :: Lens' AppMeshRouteGrpcRouteMetadataMatchMethod (Maybe AppMeshRouteMatchRange)
amrgrmmmRange = lens _appMeshRouteGrpcRouteMetadataMatchMethodRange (\s a -> s { _appMeshRouteGrpcRouteMetadataMatchMethodRange = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-regex
amrgrmmmRegex :: Lens' AppMeshRouteGrpcRouteMetadataMatchMethod (Maybe (Val Text))
amrgrmmmRegex = lens _appMeshRouteGrpcRouteMetadataMatchMethodRegex (\s a -> s { _appMeshRouteGrpcRouteMetadataMatchMethodRegex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-suffix
amrgrmmmSuffix :: Lens' AppMeshRouteGrpcRouteMetadataMatchMethod (Maybe (Val Text))
amrgrmmmSuffix = lens _appMeshRouteGrpcRouteMetadataMatchMethodSuffix (\s a -> s { _appMeshRouteGrpcRouteMetadataMatchMethodSuffix = a })

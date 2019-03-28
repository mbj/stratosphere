{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tagref.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeTagRef where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualNodeTagRef. See
-- 'appMeshVirtualNodeTagRef' for a more convenient constructor.
data AppMeshVirtualNodeTagRef =
  AppMeshVirtualNodeTagRef
  { _appMeshVirtualNodeTagRefKey :: Val Text
  , _appMeshVirtualNodeTagRefValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeTagRef where
  toJSON AppMeshVirtualNodeTagRef{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _appMeshVirtualNodeTagRefKey
    , fmap (("Value",) . toJSON) _appMeshVirtualNodeTagRefValue
    ]

-- | Constructor for 'AppMeshVirtualNodeTagRef' containing required fields as
-- arguments.
appMeshVirtualNodeTagRef
  :: Val Text -- ^ 'amvntrKey'
  -> AppMeshVirtualNodeTagRef
appMeshVirtualNodeTagRef keyarg =
  AppMeshVirtualNodeTagRef
  { _appMeshVirtualNodeTagRefKey = keyarg
  , _appMeshVirtualNodeTagRefValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tagref.html#cfn-appmesh-virtualnode-tagref-key
amvntrKey :: Lens' AppMeshVirtualNodeTagRef (Val Text)
amvntrKey = lens _appMeshVirtualNodeTagRefKey (\s a -> s { _appMeshVirtualNodeTagRefKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tagref.html#cfn-appmesh-virtualnode-tagref-value
amvntrValue :: Lens' AppMeshVirtualNodeTagRef (Maybe (Val Text))
amvntrValue = lens _appMeshVirtualNodeTagRefValue (\s a -> s { _appMeshVirtualNodeTagRefValue = a })

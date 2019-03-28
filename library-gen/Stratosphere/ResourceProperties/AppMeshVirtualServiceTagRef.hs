{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-tagref.html

module Stratosphere.ResourceProperties.AppMeshVirtualServiceTagRef where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualServiceTagRef. See
-- 'appMeshVirtualServiceTagRef' for a more convenient constructor.
data AppMeshVirtualServiceTagRef =
  AppMeshVirtualServiceTagRef
  { _appMeshVirtualServiceTagRefKey :: Val Text
  , _appMeshVirtualServiceTagRefValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualServiceTagRef where
  toJSON AppMeshVirtualServiceTagRef{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _appMeshVirtualServiceTagRefKey
    , fmap (("Value",) . toJSON) _appMeshVirtualServiceTagRefValue
    ]

-- | Constructor for 'AppMeshVirtualServiceTagRef' containing required fields
-- as arguments.
appMeshVirtualServiceTagRef
  :: Val Text -- ^ 'amvstrKey'
  -> AppMeshVirtualServiceTagRef
appMeshVirtualServiceTagRef keyarg =
  AppMeshVirtualServiceTagRef
  { _appMeshVirtualServiceTagRefKey = keyarg
  , _appMeshVirtualServiceTagRefValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-tagref.html#cfn-appmesh-virtualservice-tagref-key
amvstrKey :: Lens' AppMeshVirtualServiceTagRef (Val Text)
amvstrKey = lens _appMeshVirtualServiceTagRefKey (\s a -> s { _appMeshVirtualServiceTagRefKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-tagref.html#cfn-appmesh-virtualservice-tagref-value
amvstrValue :: Lens' AppMeshVirtualServiceTagRef (Maybe (Val Text))
amvstrValue = lens _appMeshVirtualServiceTagRefValue (\s a -> s { _appMeshVirtualServiceTagRefValue = a })

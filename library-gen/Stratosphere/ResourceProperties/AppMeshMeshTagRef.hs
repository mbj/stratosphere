{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-tagref.html

module Stratosphere.ResourceProperties.AppMeshMeshTagRef where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshMeshTagRef. See 'appMeshMeshTagRef'
-- for a more convenient constructor.
data AppMeshMeshTagRef =
  AppMeshMeshTagRef
  { _appMeshMeshTagRefKey :: Val Text
  , _appMeshMeshTagRefValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshMeshTagRef where
  toJSON AppMeshMeshTagRef{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _appMeshMeshTagRefKey
    , fmap (("Value",) . toJSON) _appMeshMeshTagRefValue
    ]

-- | Constructor for 'AppMeshMeshTagRef' containing required fields as
-- arguments.
appMeshMeshTagRef
  :: Val Text -- ^ 'ammtrKey'
  -> AppMeshMeshTagRef
appMeshMeshTagRef keyarg =
  AppMeshMeshTagRef
  { _appMeshMeshTagRefKey = keyarg
  , _appMeshMeshTagRefValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-tagref.html#cfn-appmesh-mesh-tagref-key
ammtrKey :: Lens' AppMeshMeshTagRef (Val Text)
ammtrKey = lens _appMeshMeshTagRefKey (\s a -> s { _appMeshMeshTagRefKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-tagref.html#cfn-appmesh-mesh-tagref-value
ammtrValue :: Lens' AppMeshMeshTagRef (Maybe (Val Text))
ammtrValue = lens _appMeshMeshTagRefValue (\s a -> s { _appMeshMeshTagRefValue = a })

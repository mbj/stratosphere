{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a cache subnet group. For more information about cache subnet
-- groups, go to Cache Subnet Groups in the Amazon ElastiCache User Guide or
-- go to CreateCacheSubnetGroup in the Amazon ElastiCache API Reference Guide.
-- When you specify an AWS::ElastiCache::SubnetGroup type as an argument to
-- the Ref function, AWS CloudFormation returns the name of the cache subnet
-- group.

module Stratosphere.Resources.CacheSubnetGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CacheSubnetGroup. See 'cacheSubnetGroup'
-- for a more convenient constructor.
data CacheSubnetGroup =
  CacheSubnetGroup
  { _cacheSubnetGroupDescription :: Val Text
  , _cacheSubnetGroupSubnetIds :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON CacheSubnetGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON CacheSubnetGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'CacheSubnetGroup' containing required fields as
-- arguments.
cacheSubnetGroup
  :: Val Text -- ^ 'csgDescription'
  -> [Val Text] -- ^ 'csgSubnetIds'
  -> CacheSubnetGroup
cacheSubnetGroup descriptionarg subnetIdsarg =
  CacheSubnetGroup
  { _cacheSubnetGroupDescription = descriptionarg
  , _cacheSubnetGroupSubnetIds = subnetIdsarg
  }

-- | The description for the cache subnet group.
csgDescription :: Lens' CacheSubnetGroup (Val Text)
csgDescription = lens _cacheSubnetGroupDescription (\s a -> s { _cacheSubnetGroupDescription = a })

-- | The Amazon EC2 subnet IDs for the cache subnet group.
csgSubnetIds :: Lens' CacheSubnetGroup [Val Text]
csgSubnetIds = lens _cacheSubnetGroupSubnetIds (\s a -> s { _cacheSubnetGroupSubnetIds = a })
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html

module Stratosphere.Resources.ElastiCacheSubnetGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ElastiCacheSubnetGroup. See
-- | 'elastiCacheSubnetGroup' for a more convenient constructor.
data ElastiCacheSubnetGroup =
  ElastiCacheSubnetGroup
  { _elastiCacheSubnetGroupCacheSubnetGroupName :: Maybe (Val Text)
  , _elastiCacheSubnetGroupDescription :: Val Text
  , _elastiCacheSubnetGroupSubnetIds :: [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON ElastiCacheSubnetGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON ElastiCacheSubnetGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'ElastiCacheSubnetGroup' containing required fields as
-- | arguments.
elastiCacheSubnetGroup
  :: Val Text -- ^ 'ecsugDescription'
  -> [Val Text] -- ^ 'ecsugSubnetIds'
  -> ElastiCacheSubnetGroup
elastiCacheSubnetGroup descriptionarg subnetIdsarg =
  ElastiCacheSubnetGroup
  { _elastiCacheSubnetGroupCacheSubnetGroupName = Nothing
  , _elastiCacheSubnetGroupDescription = descriptionarg
  , _elastiCacheSubnetGroupSubnetIds = subnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-cachesubnetgroupname
ecsugCacheSubnetGroupName :: Lens' ElastiCacheSubnetGroup (Maybe (Val Text))
ecsugCacheSubnetGroupName = lens _elastiCacheSubnetGroupCacheSubnetGroupName (\s a -> s { _elastiCacheSubnetGroupCacheSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-description
ecsugDescription :: Lens' ElastiCacheSubnetGroup (Val Text)
ecsugDescription = lens _elastiCacheSubnetGroupDescription (\s a -> s { _elastiCacheSubnetGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-subnetids
ecsugSubnetIds :: Lens' ElastiCacheSubnetGroup [Val Text]
ecsugSubnetIds = lens _elastiCacheSubnetGroupSubnetIds (\s a -> s { _elastiCacheSubnetGroupSubnetIds = a })

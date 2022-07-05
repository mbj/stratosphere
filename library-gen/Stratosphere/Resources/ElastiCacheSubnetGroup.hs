{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html

module Stratosphere.Resources.ElastiCacheSubnetGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for ElastiCacheSubnetGroup. See
-- 'elastiCacheSubnetGroup' for a more convenient constructor.
data ElastiCacheSubnetGroup =
  ElastiCacheSubnetGroup
  { _elastiCacheSubnetGroupCacheSubnetGroupName :: Maybe (Val Text)
  , _elastiCacheSubnetGroupDescription :: Val Text
  , _elastiCacheSubnetGroupSubnetIds :: ValList Text
  } deriving (Show, Eq)

instance ToResourceProperties ElastiCacheSubnetGroup where
  toResourceProperties ElastiCacheSubnetGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElastiCache::SubnetGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CacheSubnetGroupName",) . toJSON) _elastiCacheSubnetGroupCacheSubnetGroupName
        , (Just . ("Description",) . toJSON) _elastiCacheSubnetGroupDescription
        , (Just . ("SubnetIds",) . toJSON) _elastiCacheSubnetGroupSubnetIds
        ]
    }

-- | Constructor for 'ElastiCacheSubnetGroup' containing required fields as
-- arguments.
elastiCacheSubnetGroup
  :: Val Text -- ^ 'ecsugDescription'
  -> ValList Text -- ^ 'ecsugSubnetIds'
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
ecsugSubnetIds :: Lens' ElastiCacheSubnetGroup (ValList Text)
ecsugSubnetIds = lens _elastiCacheSubnetGroupSubnetIds (\s a -> s { _elastiCacheSubnetGroupSubnetIds = a })

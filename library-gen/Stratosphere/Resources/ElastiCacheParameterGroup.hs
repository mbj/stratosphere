{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html

module Stratosphere.Resources.ElastiCacheParameterGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ElastiCacheParameterGroup. See
-- | 'elastiCacheParameterGroup' for a more convenient constructor.
data ElastiCacheParameterGroup =
  ElastiCacheParameterGroup
  { _elastiCacheParameterGroupCacheParameterGroupFamily :: Val Text
  , _elastiCacheParameterGroupDescription :: Val Text
  , _elastiCacheParameterGroupProperties :: Maybe Object
  } deriving (Show, Eq, Generic)

instance ToJSON ElastiCacheParameterGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON ElastiCacheParameterGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'ElastiCacheParameterGroup' containing required fields as
-- | arguments.
elastiCacheParameterGroup
  :: Val Text -- ^ 'ecpgCacheParameterGroupFamily'
  -> Val Text -- ^ 'ecpgDescription'
  -> ElastiCacheParameterGroup
elastiCacheParameterGroup cacheParameterGroupFamilyarg descriptionarg =
  ElastiCacheParameterGroup
  { _elastiCacheParameterGroupCacheParameterGroupFamily = cacheParameterGroupFamilyarg
  , _elastiCacheParameterGroupDescription = descriptionarg
  , _elastiCacheParameterGroupProperties = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-cacheparametergroupfamily
ecpgCacheParameterGroupFamily :: Lens' ElastiCacheParameterGroup (Val Text)
ecpgCacheParameterGroupFamily = lens _elastiCacheParameterGroupCacheParameterGroupFamily (\s a -> s { _elastiCacheParameterGroupCacheParameterGroupFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-description
ecpgDescription :: Lens' ElastiCacheParameterGroup (Val Text)
ecpgDescription = lens _elastiCacheParameterGroupDescription (\s a -> s { _elastiCacheParameterGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-properties
ecpgProperties :: Lens' ElastiCacheParameterGroup (Maybe Object)
ecpgProperties = lens _elastiCacheParameterGroupProperties (\s a -> s { _elastiCacheParameterGroupProperties = a })

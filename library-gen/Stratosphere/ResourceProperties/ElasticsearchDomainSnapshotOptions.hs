{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainSnapshotOptions where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ElasticsearchDomainSnapshotOptions. See
-- | 'elasticsearchDomainSnapshotOptions' for a more convenient constructor.
data ElasticsearchDomainSnapshotOptions =
  ElasticsearchDomainSnapshotOptions
  { _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON ElasticsearchDomainSnapshotOptions where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON ElasticsearchDomainSnapshotOptions where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'ElasticsearchDomainSnapshotOptions' containing required
-- | fields as arguments.
elasticsearchDomainSnapshotOptions
  :: ElasticsearchDomainSnapshotOptions
elasticsearchDomainSnapshotOptions  =
  ElasticsearchDomainSnapshotOptions
  { _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html#cfn-elasticsearch-domain-snapshotoptions-automatedsnapshotstarthour
edsoAutomatedSnapshotStartHour :: Lens' ElasticsearchDomainSnapshotOptions (Maybe (Val Integer'))
edsoAutomatedSnapshotStartHour = lens _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour (\s a -> s { _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour = a })

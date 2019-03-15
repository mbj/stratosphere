{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainSnapshotOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticsearchDomainSnapshotOptions. See
-- 'elasticsearchDomainSnapshotOptions' for a more convenient constructor.
data ElasticsearchDomainSnapshotOptions =
  ElasticsearchDomainSnapshotOptions
  { _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainSnapshotOptions where
  toJSON ElasticsearchDomainSnapshotOptions{..} =
    object $
    catMaybes
    [ fmap (("AutomatedSnapshotStartHour",) . toJSON) _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour
    ]

-- | Constructor for 'ElasticsearchDomainSnapshotOptions' containing required
-- fields as arguments.
elasticsearchDomainSnapshotOptions
  :: ElasticsearchDomainSnapshotOptions
elasticsearchDomainSnapshotOptions  =
  ElasticsearchDomainSnapshotOptions
  { _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html#cfn-elasticsearch-domain-snapshotoptions-automatedsnapshotstarthour
edsoAutomatedSnapshotStartHour :: Lens' ElasticsearchDomainSnapshotOptions (Maybe (Val Integer))
edsoAutomatedSnapshotStartHour = lens _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour (\s a -> s { _elasticsearchDomainSnapshotOptionsAutomatedSnapshotStartHour = a })

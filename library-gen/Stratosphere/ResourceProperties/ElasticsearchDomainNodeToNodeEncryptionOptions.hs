{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-nodetonodeencryptionoptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainNodeToNodeEncryptionOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticsearchDomainNodeToNodeEncryptionOptions. See
-- 'elasticsearchDomainNodeToNodeEncryptionOptions' for a more convenient
-- constructor.
data ElasticsearchDomainNodeToNodeEncryptionOptions =
  ElasticsearchDomainNodeToNodeEncryptionOptions
  { _elasticsearchDomainNodeToNodeEncryptionOptionsEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainNodeToNodeEncryptionOptions where
  toJSON ElasticsearchDomainNodeToNodeEncryptionOptions{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON) _elasticsearchDomainNodeToNodeEncryptionOptionsEnabled
    ]

-- | Constructor for 'ElasticsearchDomainNodeToNodeEncryptionOptions'
-- containing required fields as arguments.
elasticsearchDomainNodeToNodeEncryptionOptions
  :: ElasticsearchDomainNodeToNodeEncryptionOptions
elasticsearchDomainNodeToNodeEncryptionOptions  =
  ElasticsearchDomainNodeToNodeEncryptionOptions
  { _elasticsearchDomainNodeToNodeEncryptionOptionsEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-nodetonodeencryptionoptions.html#cfn-elasticsearch-domain-nodetonodeencryptionoptions-enabled
edntneoEnabled :: Lens' ElasticsearchDomainNodeToNodeEncryptionOptions (Maybe (Val Bool))
edntneoEnabled = lens _elasticsearchDomainNodeToNodeEncryptionOptionsEnabled (\s a -> s { _elasticsearchDomainNodeToNodeEncryptionOptionsEnabled = a })

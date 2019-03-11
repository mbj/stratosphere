{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainEncryptionAtRestOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticsearchDomainEncryptionAtRestOptions.
-- See 'elasticsearchDomainEncryptionAtRestOptions' for a more convenient
-- constructor.
data ElasticsearchDomainEncryptionAtRestOptions =
  ElasticsearchDomainEncryptionAtRestOptions
  { _elasticsearchDomainEncryptionAtRestOptionsEnabled :: Maybe (Val Bool)
  , _elasticsearchDomainEncryptionAtRestOptionsKmsKeyId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainEncryptionAtRestOptions where
  toJSON ElasticsearchDomainEncryptionAtRestOptions{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON . fmap Bool') _elasticsearchDomainEncryptionAtRestOptionsEnabled
    , fmap (("KmsKeyId",) . toJSON) _elasticsearchDomainEncryptionAtRestOptionsKmsKeyId
    ]

-- | Constructor for 'ElasticsearchDomainEncryptionAtRestOptions' containing
-- required fields as arguments.
elasticsearchDomainEncryptionAtRestOptions
  :: ElasticsearchDomainEncryptionAtRestOptions
elasticsearchDomainEncryptionAtRestOptions  =
  ElasticsearchDomainEncryptionAtRestOptions
  { _elasticsearchDomainEncryptionAtRestOptionsEnabled = Nothing
  , _elasticsearchDomainEncryptionAtRestOptionsKmsKeyId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html#cfn-elasticsearch-domain-encryptionatrestoptions-enabled
edearoEnabled :: Lens' ElasticsearchDomainEncryptionAtRestOptions (Maybe (Val Bool))
edearoEnabled = lens _elasticsearchDomainEncryptionAtRestOptionsEnabled (\s a -> s { _elasticsearchDomainEncryptionAtRestOptionsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html#cfn-elasticsearch-domain-encryptionatrestoptions-kmskeyid
edearoKmsKeyId :: Lens' ElasticsearchDomainEncryptionAtRestOptions (Maybe (Val Text))
edearoKmsKeyId = lens _elasticsearchDomainEncryptionAtRestOptionsKmsKeyId (\s a -> s { _elasticsearchDomainEncryptionAtRestOptionsKmsKeyId = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainEBSOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticsearchDomainEBSOptions. See
-- 'elasticsearchDomainEBSOptions' for a more convenient constructor.
data ElasticsearchDomainEBSOptions =
  ElasticsearchDomainEBSOptions
  { _elasticsearchDomainEBSOptionsEBSEnabled :: Maybe (Val Bool)
  , _elasticsearchDomainEBSOptionsIops :: Maybe (Val Integer)
  , _elasticsearchDomainEBSOptionsVolumeSize :: Maybe (Val Integer)
  , _elasticsearchDomainEBSOptionsVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainEBSOptions where
  toJSON ElasticsearchDomainEBSOptions{..} =
    object $
    catMaybes
    [ fmap (("EBSEnabled",) . toJSON . fmap Bool') _elasticsearchDomainEBSOptionsEBSEnabled
    , fmap (("Iops",) . toJSON . fmap Integer') _elasticsearchDomainEBSOptionsIops
    , fmap (("VolumeSize",) . toJSON . fmap Integer') _elasticsearchDomainEBSOptionsVolumeSize
    , fmap (("VolumeType",) . toJSON) _elasticsearchDomainEBSOptionsVolumeType
    ]

instance FromJSON ElasticsearchDomainEBSOptions where
  parseJSON (Object obj) =
    ElasticsearchDomainEBSOptions <$>
      fmap (fmap (fmap unBool')) (obj .:? "EBSEnabled") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Iops") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "VolumeSize") <*>
      (obj .:? "VolumeType")
  parseJSON _ = mempty

-- | Constructor for 'ElasticsearchDomainEBSOptions' containing required
-- fields as arguments.
elasticsearchDomainEBSOptions
  :: ElasticsearchDomainEBSOptions
elasticsearchDomainEBSOptions  =
  ElasticsearchDomainEBSOptions
  { _elasticsearchDomainEBSOptionsEBSEnabled = Nothing
  , _elasticsearchDomainEBSOptionsIops = Nothing
  , _elasticsearchDomainEBSOptionsVolumeSize = Nothing
  , _elasticsearchDomainEBSOptionsVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-ebsenabled
edebsoEBSEnabled :: Lens' ElasticsearchDomainEBSOptions (Maybe (Val Bool))
edebsoEBSEnabled = lens _elasticsearchDomainEBSOptionsEBSEnabled (\s a -> s { _elasticsearchDomainEBSOptionsEBSEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-iops
edebsoIops :: Lens' ElasticsearchDomainEBSOptions (Maybe (Val Integer))
edebsoIops = lens _elasticsearchDomainEBSOptionsIops (\s a -> s { _elasticsearchDomainEBSOptionsIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-volumesize
edebsoVolumeSize :: Lens' ElasticsearchDomainEBSOptions (Maybe (Val Integer))
edebsoVolumeSize = lens _elasticsearchDomainEBSOptionsVolumeSize (\s a -> s { _elasticsearchDomainEBSOptionsVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-volumetype
edebsoVolumeType :: Lens' ElasticsearchDomainEBSOptions (Maybe (Val Text))
edebsoVolumeType = lens _elasticsearchDomainEBSOptionsVolumeType (\s a -> s { _elasticsearchDomainEBSOptionsVolumeType = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html

module Stratosphere.ResourceProperties.S3BucketServerSideEncryptionByDefault where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketServerSideEncryptionByDefault. See
-- 's3BucketServerSideEncryptionByDefault' for a more convenient
-- constructor.
data S3BucketServerSideEncryptionByDefault =
  S3BucketServerSideEncryptionByDefault
  { _s3BucketServerSideEncryptionByDefaultKMSMasterKeyID :: Maybe (Val Text)
  , _s3BucketServerSideEncryptionByDefaultSSEAlgorithm :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketServerSideEncryptionByDefault where
  toJSON S3BucketServerSideEncryptionByDefault{..} =
    object $
    catMaybes
    [ fmap (("KMSMasterKeyID",) . toJSON) _s3BucketServerSideEncryptionByDefaultKMSMasterKeyID
    , (Just . ("SSEAlgorithm",) . toJSON) _s3BucketServerSideEncryptionByDefaultSSEAlgorithm
    ]

instance FromJSON S3BucketServerSideEncryptionByDefault where
  parseJSON (Object obj) =
    S3BucketServerSideEncryptionByDefault <$>
      (obj .:? "KMSMasterKeyID") <*>
      (obj .: "SSEAlgorithm")
  parseJSON _ = mempty

-- | Constructor for 'S3BucketServerSideEncryptionByDefault' containing
-- required fields as arguments.
s3BucketServerSideEncryptionByDefault
  :: Val Text -- ^ 'sbssebdSSEAlgorithm'
  -> S3BucketServerSideEncryptionByDefault
s3BucketServerSideEncryptionByDefault sSEAlgorithmarg =
  S3BucketServerSideEncryptionByDefault
  { _s3BucketServerSideEncryptionByDefaultKMSMasterKeyID = Nothing
  , _s3BucketServerSideEncryptionByDefaultSSEAlgorithm = sSEAlgorithmarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html#cfn-s3-bucket-serversideencryptionbydefault-kmsmasterkeyid
sbssebdKMSMasterKeyID :: Lens' S3BucketServerSideEncryptionByDefault (Maybe (Val Text))
sbssebdKMSMasterKeyID = lens _s3BucketServerSideEncryptionByDefaultKMSMasterKeyID (\s a -> s { _s3BucketServerSideEncryptionByDefaultKMSMasterKeyID = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html#cfn-s3-bucket-serversideencryptionbydefault-ssealgorithm
sbssebdSSEAlgorithm :: Lens' S3BucketServerSideEncryptionByDefault (Val Text)
sbssebdSSEAlgorithm = lens _s3BucketServerSideEncryptionByDefaultSSEAlgorithm (\s a -> s { _s3BucketServerSideEncryptionByDefaultSSEAlgorithm = a })

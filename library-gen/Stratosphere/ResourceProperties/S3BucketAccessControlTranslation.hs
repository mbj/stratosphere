
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html

module Stratosphere.ResourceProperties.S3BucketAccessControlTranslation where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketAccessControlTranslation. See
-- 's3BucketAccessControlTranslation' for a more convenient constructor.
data S3BucketAccessControlTranslation =
  S3BucketAccessControlTranslation
  { _s3BucketAccessControlTranslationOwner :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketAccessControlTranslation where
  toJSON S3BucketAccessControlTranslation{..} =
    object $
    catMaybes
    [ (Just . ("Owner",) . toJSON) _s3BucketAccessControlTranslationOwner
    ]

-- | Constructor for 'S3BucketAccessControlTranslation' containing required
-- fields as arguments.
s3BucketAccessControlTranslation
  :: Val Text -- ^ 'sbactOwner'
  -> S3BucketAccessControlTranslation
s3BucketAccessControlTranslation ownerarg =
  S3BucketAccessControlTranslation
  { _s3BucketAccessControlTranslationOwner = ownerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html#cfn-s3-bucket-accesscontroltranslation-owner
sbactOwner :: Lens' S3BucketAccessControlTranslation (Val Text)
sbactOwner = lens _s3BucketAccessControlTranslationOwner (\s a -> s { _s3BucketAccessControlTranslationOwner = a })


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html

module Stratosphere.ResourceProperties.S3BucketPublicAccessBlockConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketPublicAccessBlockConfiguration. See
-- 's3BucketPublicAccessBlockConfiguration' for a more convenient
-- constructor.
data S3BucketPublicAccessBlockConfiguration =
  S3BucketPublicAccessBlockConfiguration
  { _s3BucketPublicAccessBlockConfigurationBlockPublicAcls :: Maybe (Val Bool)
  , _s3BucketPublicAccessBlockConfigurationBlockPublicPolicy :: Maybe (Val Bool)
  , _s3BucketPublicAccessBlockConfigurationIgnorePublicAcls :: Maybe (Val Bool)
  , _s3BucketPublicAccessBlockConfigurationRestrictPublicBuckets :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON S3BucketPublicAccessBlockConfiguration where
  toJSON S3BucketPublicAccessBlockConfiguration{..} =
    object $
    catMaybes
    [ fmap (("BlockPublicAcls",) . toJSON) _s3BucketPublicAccessBlockConfigurationBlockPublicAcls
    , fmap (("BlockPublicPolicy",) . toJSON) _s3BucketPublicAccessBlockConfigurationBlockPublicPolicy
    , fmap (("IgnorePublicAcls",) . toJSON) _s3BucketPublicAccessBlockConfigurationIgnorePublicAcls
    , fmap (("RestrictPublicBuckets",) . toJSON) _s3BucketPublicAccessBlockConfigurationRestrictPublicBuckets
    ]

-- | Constructor for 'S3BucketPublicAccessBlockConfiguration' containing
-- required fields as arguments.
s3BucketPublicAccessBlockConfiguration
  :: S3BucketPublicAccessBlockConfiguration
s3BucketPublicAccessBlockConfiguration  =
  S3BucketPublicAccessBlockConfiguration
  { _s3BucketPublicAccessBlockConfigurationBlockPublicAcls = Nothing
  , _s3BucketPublicAccessBlockConfigurationBlockPublicPolicy = Nothing
  , _s3BucketPublicAccessBlockConfigurationIgnorePublicAcls = Nothing
  , _s3BucketPublicAccessBlockConfigurationRestrictPublicBuckets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicacls
sbpabcBlockPublicAcls :: Lens' S3BucketPublicAccessBlockConfiguration (Maybe (Val Bool))
sbpabcBlockPublicAcls = lens _s3BucketPublicAccessBlockConfigurationBlockPublicAcls (\s a -> s { _s3BucketPublicAccessBlockConfigurationBlockPublicAcls = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-blockpublicpolicy
sbpabcBlockPublicPolicy :: Lens' S3BucketPublicAccessBlockConfiguration (Maybe (Val Bool))
sbpabcBlockPublicPolicy = lens _s3BucketPublicAccessBlockConfigurationBlockPublicPolicy (\s a -> s { _s3BucketPublicAccessBlockConfigurationBlockPublicPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-ignorepublicacls
sbpabcIgnorePublicAcls :: Lens' S3BucketPublicAccessBlockConfiguration (Maybe (Val Bool))
sbpabcIgnorePublicAcls = lens _s3BucketPublicAccessBlockConfigurationIgnorePublicAcls (\s a -> s { _s3BucketPublicAccessBlockConfigurationIgnorePublicAcls = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html#cfn-s3-bucket-publicaccessblockconfiguration-restrictpublicbuckets
sbpabcRestrictPublicBuckets :: Lens' S3BucketPublicAccessBlockConfiguration (Maybe (Val Bool))
sbpabcRestrictPublicBuckets = lens _s3BucketPublicAccessBlockConfigurationRestrictPublicBuckets (\s a -> s { _s3BucketPublicAccessBlockConfigurationRestrictPublicBuckets = a })

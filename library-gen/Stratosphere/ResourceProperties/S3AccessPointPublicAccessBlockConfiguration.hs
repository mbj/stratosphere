
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html

module Stratosphere.ResourceProperties.S3AccessPointPublicAccessBlockConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- S3AccessPointPublicAccessBlockConfiguration. See
-- 's3AccessPointPublicAccessBlockConfiguration' for a more convenient
-- constructor.
data S3AccessPointPublicAccessBlockConfiguration =
  S3AccessPointPublicAccessBlockConfiguration
  { _s3AccessPointPublicAccessBlockConfigurationBlockPublicAcls :: Maybe (Val Bool)
  , _s3AccessPointPublicAccessBlockConfigurationBlockPublicPolicy :: Maybe (Val Bool)
  , _s3AccessPointPublicAccessBlockConfigurationIgnorePublicAcls :: Maybe (Val Bool)
  , _s3AccessPointPublicAccessBlockConfigurationRestrictPublicBuckets :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON S3AccessPointPublicAccessBlockConfiguration where
  toJSON S3AccessPointPublicAccessBlockConfiguration{..} =
    object $
    catMaybes
    [ fmap (("BlockPublicAcls",) . toJSON) _s3AccessPointPublicAccessBlockConfigurationBlockPublicAcls
    , fmap (("BlockPublicPolicy",) . toJSON) _s3AccessPointPublicAccessBlockConfigurationBlockPublicPolicy
    , fmap (("IgnorePublicAcls",) . toJSON) _s3AccessPointPublicAccessBlockConfigurationIgnorePublicAcls
    , fmap (("RestrictPublicBuckets",) . toJSON) _s3AccessPointPublicAccessBlockConfigurationRestrictPublicBuckets
    ]

-- | Constructor for 'S3AccessPointPublicAccessBlockConfiguration' containing
-- required fields as arguments.
s3AccessPointPublicAccessBlockConfiguration
  :: S3AccessPointPublicAccessBlockConfiguration
s3AccessPointPublicAccessBlockConfiguration  =
  S3AccessPointPublicAccessBlockConfiguration
  { _s3AccessPointPublicAccessBlockConfigurationBlockPublicAcls = Nothing
  , _s3AccessPointPublicAccessBlockConfigurationBlockPublicPolicy = Nothing
  , _s3AccessPointPublicAccessBlockConfigurationIgnorePublicAcls = Nothing
  , _s3AccessPointPublicAccessBlockConfigurationRestrictPublicBuckets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html#cfn-s3-accesspoint-publicaccessblockconfiguration-blockpublicacls
sappabcBlockPublicAcls :: Lens' S3AccessPointPublicAccessBlockConfiguration (Maybe (Val Bool))
sappabcBlockPublicAcls = lens _s3AccessPointPublicAccessBlockConfigurationBlockPublicAcls (\s a -> s { _s3AccessPointPublicAccessBlockConfigurationBlockPublicAcls = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html#cfn-s3-accesspoint-publicaccessblockconfiguration-blockpublicpolicy
sappabcBlockPublicPolicy :: Lens' S3AccessPointPublicAccessBlockConfiguration (Maybe (Val Bool))
sappabcBlockPublicPolicy = lens _s3AccessPointPublicAccessBlockConfigurationBlockPublicPolicy (\s a -> s { _s3AccessPointPublicAccessBlockConfigurationBlockPublicPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html#cfn-s3-accesspoint-publicaccessblockconfiguration-ignorepublicacls
sappabcIgnorePublicAcls :: Lens' S3AccessPointPublicAccessBlockConfiguration (Maybe (Val Bool))
sappabcIgnorePublicAcls = lens _s3AccessPointPublicAccessBlockConfigurationIgnorePublicAcls (\s a -> s { _s3AccessPointPublicAccessBlockConfigurationIgnorePublicAcls = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html#cfn-s3-accesspoint-publicaccessblockconfiguration-restrictpublicbuckets
sappabcRestrictPublicBuckets :: Lens' S3AccessPointPublicAccessBlockConfiguration (Maybe (Val Bool))
sappabcRestrictPublicBuckets = lens _s3AccessPointPublicAccessBlockConfigurationRestrictPublicBuckets (\s a -> s { _s3AccessPointPublicAccessBlockConfigurationRestrictPublicBuckets = a })

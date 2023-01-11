
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-s3.html

module Stratosphere.ResourceProperties.MSKClusterS3 where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterS3. See 'mskClusterS3' for a more
-- convenient constructor.
data MSKClusterS3 =
  MSKClusterS3
  { _mSKClusterS3Bucket :: Maybe (Val Text)
  , _mSKClusterS3Enabled :: Val Bool
  , _mSKClusterS3Prefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MSKClusterS3 where
  toJSON MSKClusterS3{..} =
    object $
    catMaybes
    [ fmap (("Bucket",) . toJSON) _mSKClusterS3Bucket
    , (Just . ("Enabled",) . toJSON) _mSKClusterS3Enabled
    , fmap (("Prefix",) . toJSON) _mSKClusterS3Prefix
    ]

-- | Constructor for 'MSKClusterS3' containing required fields as arguments.
mskClusterS3
  :: Val Bool -- ^ 'mskcsEnabled'
  -> MSKClusterS3
mskClusterS3 enabledarg =
  MSKClusterS3
  { _mSKClusterS3Bucket = Nothing
  , _mSKClusterS3Enabled = enabledarg
  , _mSKClusterS3Prefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-s3.html#cfn-msk-cluster-s3-bucket
mskcsBucket :: Lens' MSKClusterS3 (Maybe (Val Text))
mskcsBucket = lens _mSKClusterS3Bucket (\s a -> s { _mSKClusterS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-s3.html#cfn-msk-cluster-s3-enabled
mskcsEnabled :: Lens' MSKClusterS3 (Val Bool)
mskcsEnabled = lens _mSKClusterS3Enabled (\s a -> s { _mSKClusterS3Enabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-s3.html#cfn-msk-cluster-s3-prefix
mskcsPrefix :: Lens' MSKClusterS3 (Maybe (Val Text))
mskcsPrefix = lens _mSKClusterS3Prefix (\s a -> s { _mSKClusterS3Prefix = a })

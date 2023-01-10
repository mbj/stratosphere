
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html

module Stratosphere.ResourceProperties.CodeCommitRepositoryS3 where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodeCommitRepositoryS3. See
-- 'codeCommitRepositoryS3' for a more convenient constructor.
data CodeCommitRepositoryS3 =
  CodeCommitRepositoryS3
  { _codeCommitRepositoryS3Bucket :: Val Text
  , _codeCommitRepositoryS3Key :: Val Text
  , _codeCommitRepositoryS3ObjectVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeCommitRepositoryS3 where
  toJSON CodeCommitRepositoryS3{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _codeCommitRepositoryS3Bucket
    , (Just . ("Key",) . toJSON) _codeCommitRepositoryS3Key
    , fmap (("ObjectVersion",) . toJSON) _codeCommitRepositoryS3ObjectVersion
    ]

-- | Constructor for 'CodeCommitRepositoryS3' containing required fields as
-- arguments.
codeCommitRepositoryS3
  :: Val Text -- ^ 'ccrsBucket'
  -> Val Text -- ^ 'ccrsKey'
  -> CodeCommitRepositoryS3
codeCommitRepositoryS3 bucketarg keyarg =
  CodeCommitRepositoryS3
  { _codeCommitRepositoryS3Bucket = bucketarg
  , _codeCommitRepositoryS3Key = keyarg
  , _codeCommitRepositoryS3ObjectVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-bucket
ccrsBucket :: Lens' CodeCommitRepositoryS3 (Val Text)
ccrsBucket = lens _codeCommitRepositoryS3Bucket (\s a -> s { _codeCommitRepositoryS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-key
ccrsKey :: Lens' CodeCommitRepositoryS3 (Val Text)
ccrsKey = lens _codeCommitRepositoryS3Key (\s a -> s { _codeCommitRepositoryS3Key = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-objectversion
ccrsObjectVersion :: Lens' CodeCommitRepositoryS3 (Maybe (Val Text))
ccrsObjectVersion = lens _codeCommitRepositoryS3ObjectVersion (\s a -> s { _codeCommitRepositoryS3ObjectVersion = a })

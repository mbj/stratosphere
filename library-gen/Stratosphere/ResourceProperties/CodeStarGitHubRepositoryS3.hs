
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html

module Stratosphere.ResourceProperties.CodeStarGitHubRepositoryS3 where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeStarGitHubRepositoryS3. See
-- 'codeStarGitHubRepositoryS3' for a more convenient constructor.
data CodeStarGitHubRepositoryS3 =
  CodeStarGitHubRepositoryS3
  { _codeStarGitHubRepositoryS3Bucket :: Val Text
  , _codeStarGitHubRepositoryS3Key :: Val Text
  , _codeStarGitHubRepositoryS3ObjectVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeStarGitHubRepositoryS3 where
  toJSON CodeStarGitHubRepositoryS3{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _codeStarGitHubRepositoryS3Bucket
    , (Just . ("Key",) . toJSON) _codeStarGitHubRepositoryS3Key
    , fmap (("ObjectVersion",) . toJSON) _codeStarGitHubRepositoryS3ObjectVersion
    ]

-- | Constructor for 'CodeStarGitHubRepositoryS3' containing required fields
-- as arguments.
codeStarGitHubRepositoryS3
  :: Val Text -- ^ 'csghrsBucket'
  -> Val Text -- ^ 'csghrsKey'
  -> CodeStarGitHubRepositoryS3
codeStarGitHubRepositoryS3 bucketarg keyarg =
  CodeStarGitHubRepositoryS3
  { _codeStarGitHubRepositoryS3Bucket = bucketarg
  , _codeStarGitHubRepositoryS3Key = keyarg
  , _codeStarGitHubRepositoryS3ObjectVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-bucket
csghrsBucket :: Lens' CodeStarGitHubRepositoryS3 (Val Text)
csghrsBucket = lens _codeStarGitHubRepositoryS3Bucket (\s a -> s { _codeStarGitHubRepositoryS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-key
csghrsKey :: Lens' CodeStarGitHubRepositoryS3 (Val Text)
csghrsKey = lens _codeStarGitHubRepositoryS3Key (\s a -> s { _codeStarGitHubRepositoryS3Key = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-objectversion
csghrsObjectVersion :: Lens' CodeStarGitHubRepositoryS3 (Maybe (Val Text))
csghrsObjectVersion = lens _codeStarGitHubRepositoryS3ObjectVersion (\s a -> s { _codeStarGitHubRepositoryS3ObjectVersion = a })

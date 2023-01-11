
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-code.html

module Stratosphere.ResourceProperties.CodeStarGitHubRepositoryCode where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeStarGitHubRepositoryS3

-- | Full data type definition for CodeStarGitHubRepositoryCode. See
-- 'codeStarGitHubRepositoryCode' for a more convenient constructor.
data CodeStarGitHubRepositoryCode =
  CodeStarGitHubRepositoryCode
  { _codeStarGitHubRepositoryCodeS3 :: CodeStarGitHubRepositoryS3
  } deriving (Show, Eq)

instance ToJSON CodeStarGitHubRepositoryCode where
  toJSON CodeStarGitHubRepositoryCode{..} =
    object $
    catMaybes
    [ (Just . ("S3",) . toJSON) _codeStarGitHubRepositoryCodeS3
    ]

-- | Constructor for 'CodeStarGitHubRepositoryCode' containing required fields
-- as arguments.
codeStarGitHubRepositoryCode
  :: CodeStarGitHubRepositoryS3 -- ^ 'csghrcS3'
  -> CodeStarGitHubRepositoryCode
codeStarGitHubRepositoryCode s3arg =
  CodeStarGitHubRepositoryCode
  { _codeStarGitHubRepositoryCodeS3 = s3arg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-code.html#cfn-codestar-githubrepository-code-s3
csghrcS3 :: Lens' CodeStarGitHubRepositoryCode CodeStarGitHubRepositoryS3
csghrcS3 = lens _codeStarGitHubRepositoryCodeS3 (\s a -> s { _codeStarGitHubRepositoryCodeS3 = a })

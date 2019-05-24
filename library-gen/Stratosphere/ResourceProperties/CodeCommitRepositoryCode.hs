{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html

module Stratosphere.ResourceProperties.CodeCommitRepositoryCode where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeCommitRepositoryS3

-- | Full data type definition for CodeCommitRepositoryCode. See
-- 'codeCommitRepositoryCode' for a more convenient constructor.
data CodeCommitRepositoryCode =
  CodeCommitRepositoryCode
  { _codeCommitRepositoryCodeS3 :: CodeCommitRepositoryS3
  } deriving (Show, Eq)

instance ToJSON CodeCommitRepositoryCode where
  toJSON CodeCommitRepositoryCode{..} =
    object $
    catMaybes
    [ (Just . ("S3",) . toJSON) _codeCommitRepositoryCodeS3
    ]

-- | Constructor for 'CodeCommitRepositoryCode' containing required fields as
-- arguments.
codeCommitRepositoryCode
  :: CodeCommitRepositoryS3 -- ^ 'ccrcS3'
  -> CodeCommitRepositoryCode
codeCommitRepositoryCode s3arg =
  CodeCommitRepositoryCode
  { _codeCommitRepositoryCodeS3 = s3arg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html#cfn-codecommit-repository-code-s3
ccrcS3 :: Lens' CodeCommitRepositoryCode CodeCommitRepositoryS3
ccrcS3 = lens _codeCommitRepositoryCodeS3 (\s a -> s { _codeCommitRepositoryCodeS3 = a })

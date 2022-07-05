{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html

module Stratosphere.Resources.CodeStarGitHubRepository where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeStarGitHubRepositoryCode

-- | Full data type definition for CodeStarGitHubRepository. See
-- 'codeStarGitHubRepository' for a more convenient constructor.
data CodeStarGitHubRepository =
  CodeStarGitHubRepository
  { _codeStarGitHubRepositoryCode :: Maybe CodeStarGitHubRepositoryCode
  , _codeStarGitHubRepositoryEnableIssues :: Maybe (Val Bool)
  , _codeStarGitHubRepositoryIsPrivate :: Maybe (Val Bool)
  , _codeStarGitHubRepositoryRepositoryAccessToken :: Val Text
  , _codeStarGitHubRepositoryRepositoryDescription :: Maybe (Val Text)
  , _codeStarGitHubRepositoryRepositoryName :: Val Text
  , _codeStarGitHubRepositoryRepositoryOwner :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CodeStarGitHubRepository where
  toResourceProperties CodeStarGitHubRepository{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeStar::GitHubRepository"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Code",) . toJSON) _codeStarGitHubRepositoryCode
        , fmap (("EnableIssues",) . toJSON) _codeStarGitHubRepositoryEnableIssues
        , fmap (("IsPrivate",) . toJSON) _codeStarGitHubRepositoryIsPrivate
        , (Just . ("RepositoryAccessToken",) . toJSON) _codeStarGitHubRepositoryRepositoryAccessToken
        , fmap (("RepositoryDescription",) . toJSON) _codeStarGitHubRepositoryRepositoryDescription
        , (Just . ("RepositoryName",) . toJSON) _codeStarGitHubRepositoryRepositoryName
        , (Just . ("RepositoryOwner",) . toJSON) _codeStarGitHubRepositoryRepositoryOwner
        ]
    }

-- | Constructor for 'CodeStarGitHubRepository' containing required fields as
-- arguments.
codeStarGitHubRepository
  :: Val Text -- ^ 'csghrRepositoryAccessToken'
  -> Val Text -- ^ 'csghrRepositoryName'
  -> Val Text -- ^ 'csghrRepositoryOwner'
  -> CodeStarGitHubRepository
codeStarGitHubRepository repositoryAccessTokenarg repositoryNamearg repositoryOwnerarg =
  CodeStarGitHubRepository
  { _codeStarGitHubRepositoryCode = Nothing
  , _codeStarGitHubRepositoryEnableIssues = Nothing
  , _codeStarGitHubRepositoryIsPrivate = Nothing
  , _codeStarGitHubRepositoryRepositoryAccessToken = repositoryAccessTokenarg
  , _codeStarGitHubRepositoryRepositoryDescription = Nothing
  , _codeStarGitHubRepositoryRepositoryName = repositoryNamearg
  , _codeStarGitHubRepositoryRepositoryOwner = repositoryOwnerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-code
csghrCode :: Lens' CodeStarGitHubRepository (Maybe CodeStarGitHubRepositoryCode)
csghrCode = lens _codeStarGitHubRepositoryCode (\s a -> s { _codeStarGitHubRepositoryCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-enableissues
csghrEnableIssues :: Lens' CodeStarGitHubRepository (Maybe (Val Bool))
csghrEnableIssues = lens _codeStarGitHubRepositoryEnableIssues (\s a -> s { _codeStarGitHubRepositoryEnableIssues = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-isprivate
csghrIsPrivate :: Lens' CodeStarGitHubRepository (Maybe (Val Bool))
csghrIsPrivate = lens _codeStarGitHubRepositoryIsPrivate (\s a -> s { _codeStarGitHubRepositoryIsPrivate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryaccesstoken
csghrRepositoryAccessToken :: Lens' CodeStarGitHubRepository (Val Text)
csghrRepositoryAccessToken = lens _codeStarGitHubRepositoryRepositoryAccessToken (\s a -> s { _codeStarGitHubRepositoryRepositoryAccessToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositorydescription
csghrRepositoryDescription :: Lens' CodeStarGitHubRepository (Maybe (Val Text))
csghrRepositoryDescription = lens _codeStarGitHubRepositoryRepositoryDescription (\s a -> s { _codeStarGitHubRepositoryRepositoryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryname
csghrRepositoryName :: Lens' CodeStarGitHubRepository (Val Text)
csghrRepositoryName = lens _codeStarGitHubRepositoryRepositoryName (\s a -> s { _codeStarGitHubRepositoryRepositoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryowner
csghrRepositoryOwner :: Lens' CodeStarGitHubRepository (Val Text)
csghrRepositoryOwner = lens _codeStarGitHubRepositoryRepositoryOwner (\s a -> s { _codeStarGitHubRepositoryRepositoryOwner = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html

module Stratosphere.ResourceProperties.SageMakerCodeRepositoryGitConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerCodeRepositoryGitConfig. See
-- 'sageMakerCodeRepositoryGitConfig' for a more convenient constructor.
data SageMakerCodeRepositoryGitConfig =
  SageMakerCodeRepositoryGitConfig
  { _sageMakerCodeRepositoryGitConfigBranch :: Maybe (Val Text)
  , _sageMakerCodeRepositoryGitConfigRepositoryUrl :: Val Text
  , _sageMakerCodeRepositoryGitConfigSecretArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerCodeRepositoryGitConfig where
  toJSON SageMakerCodeRepositoryGitConfig{..} =
    object $
    catMaybes
    [ fmap (("Branch",) . toJSON) _sageMakerCodeRepositoryGitConfigBranch
    , (Just . ("RepositoryUrl",) . toJSON) _sageMakerCodeRepositoryGitConfigRepositoryUrl
    , fmap (("SecretArn",) . toJSON) _sageMakerCodeRepositoryGitConfigSecretArn
    ]

-- | Constructor for 'SageMakerCodeRepositoryGitConfig' containing required
-- fields as arguments.
sageMakerCodeRepositoryGitConfig
  :: Val Text -- ^ 'smcrgcRepositoryUrl'
  -> SageMakerCodeRepositoryGitConfig
sageMakerCodeRepositoryGitConfig repositoryUrlarg =
  SageMakerCodeRepositoryGitConfig
  { _sageMakerCodeRepositoryGitConfigBranch = Nothing
  , _sageMakerCodeRepositoryGitConfigRepositoryUrl = repositoryUrlarg
  , _sageMakerCodeRepositoryGitConfigSecretArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-branch
smcrgcBranch :: Lens' SageMakerCodeRepositoryGitConfig (Maybe (Val Text))
smcrgcBranch = lens _sageMakerCodeRepositoryGitConfigBranch (\s a -> s { _sageMakerCodeRepositoryGitConfigBranch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-repositoryurl
smcrgcRepositoryUrl :: Lens' SageMakerCodeRepositoryGitConfig (Val Text)
smcrgcRepositoryUrl = lens _sageMakerCodeRepositoryGitConfigRepositoryUrl (\s a -> s { _sageMakerCodeRepositoryGitConfigRepositoryUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-secretarn
smcrgcSecretArn :: Lens' SageMakerCodeRepositoryGitConfig (Maybe (Val Text))
smcrgcSecretArn = lens _sageMakerCodeRepositoryGitConfigSecretArn (\s a -> s { _sageMakerCodeRepositoryGitConfigSecretArn = a })

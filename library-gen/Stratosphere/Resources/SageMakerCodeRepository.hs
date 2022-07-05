{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html

module Stratosphere.Resources.SageMakerCodeRepository where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerCodeRepositoryGitConfig

-- | Full data type definition for SageMakerCodeRepository. See
-- 'sageMakerCodeRepository' for a more convenient constructor.
data SageMakerCodeRepository =
  SageMakerCodeRepository
  { _sageMakerCodeRepositoryCodeRepositoryName :: Maybe (Val Text)
  , _sageMakerCodeRepositoryGitConfig :: SageMakerCodeRepositoryGitConfig
  } deriving (Show, Eq)

instance ToResourceProperties SageMakerCodeRepository where
  toResourceProperties SageMakerCodeRepository{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SageMaker::CodeRepository"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CodeRepositoryName",) . toJSON) _sageMakerCodeRepositoryCodeRepositoryName
        , (Just . ("GitConfig",) . toJSON) _sageMakerCodeRepositoryGitConfig
        ]
    }

-- | Constructor for 'SageMakerCodeRepository' containing required fields as
-- arguments.
sageMakerCodeRepository
  :: SageMakerCodeRepositoryGitConfig -- ^ 'smcrGitConfig'
  -> SageMakerCodeRepository
sageMakerCodeRepository gitConfigarg =
  SageMakerCodeRepository
  { _sageMakerCodeRepositoryCodeRepositoryName = Nothing
  , _sageMakerCodeRepositoryGitConfig = gitConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html#cfn-sagemaker-coderepository-coderepositoryname
smcrCodeRepositoryName :: Lens' SageMakerCodeRepository (Maybe (Val Text))
smcrCodeRepositoryName = lens _sageMakerCodeRepositoryCodeRepositoryName (\s a -> s { _sageMakerCodeRepositoryCodeRepositoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html#cfn-sagemaker-coderepository-gitconfig
smcrGitConfig :: Lens' SageMakerCodeRepository SageMakerCodeRepositoryGitConfig
smcrGitConfig = lens _sageMakerCodeRepositoryGitConfig (\s a -> s { _sageMakerCodeRepositoryGitConfig = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html

module Stratosphere.Resources.ECRRepository where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECRRepositoryLifecyclePolicy

-- | Full data type definition for ECRRepository. See 'ecrRepository' for a
-- more convenient constructor.
data ECRRepository =
  ECRRepository
  { _eCRRepositoryLifecyclePolicy :: Maybe ECRRepositoryLifecyclePolicy
  , _eCRRepositoryRepositoryName :: Maybe (Val Text)
  , _eCRRepositoryRepositoryPolicyText :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON ECRRepository where
  toJSON ECRRepository{..} =
    object $
    catMaybes
    [ fmap (("LifecyclePolicy",) . toJSON) _eCRRepositoryLifecyclePolicy
    , fmap (("RepositoryName",) . toJSON) _eCRRepositoryRepositoryName
    , fmap (("RepositoryPolicyText",) . toJSON) _eCRRepositoryRepositoryPolicyText
    ]

-- | Constructor for 'ECRRepository' containing required fields as arguments.
ecrRepository
  :: ECRRepository
ecrRepository  =
  ECRRepository
  { _eCRRepositoryLifecyclePolicy = Nothing
  , _eCRRepositoryRepositoryName = Nothing
  , _eCRRepositoryRepositoryPolicyText = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-lifecyclepolicy
ecrrLifecyclePolicy :: Lens' ECRRepository (Maybe ECRRepositoryLifecyclePolicy)
ecrrLifecyclePolicy = lens _eCRRepositoryLifecyclePolicy (\s a -> s { _eCRRepositoryLifecyclePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositoryname
ecrrRepositoryName :: Lens' ECRRepository (Maybe (Val Text))
ecrrRepositoryName = lens _eCRRepositoryRepositoryName (\s a -> s { _eCRRepositoryRepositoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositorypolicytext
ecrrRepositoryPolicyText :: Lens' ECRRepository (Maybe Object)
ecrrRepositoryPolicyText = lens _eCRRepositoryRepositoryPolicyText (\s a -> s { _eCRRepositoryRepositoryPolicyText = a })

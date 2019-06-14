{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html

module Stratosphere.Resources.ECRRepository where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECRRepositoryLifecyclePolicy
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ECRRepository. See 'ecrRepository' for a
-- more convenient constructor.
data ECRRepository =
  ECRRepository
  { _eCRRepositoryLifecyclePolicy :: Maybe ECRRepositoryLifecyclePolicy
  , _eCRRepositoryRepositoryName :: Maybe (Val Text)
  , _eCRRepositoryRepositoryPolicyText :: Maybe Object
  , _eCRRepositoryTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ECRRepository where
  toResourceProperties ECRRepository{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECR::Repository"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("LifecyclePolicy",) . toJSON) _eCRRepositoryLifecyclePolicy
        , fmap (("RepositoryName",) . toJSON) _eCRRepositoryRepositoryName
        , fmap (("RepositoryPolicyText",) . toJSON) _eCRRepositoryRepositoryPolicyText
        , fmap (("Tags",) . toJSON) _eCRRepositoryTags
        ]
    }

-- | Constructor for 'ECRRepository' containing required fields as arguments.
ecrRepository
  :: ECRRepository
ecrRepository  =
  ECRRepository
  { _eCRRepositoryLifecyclePolicy = Nothing
  , _eCRRepositoryRepositoryName = Nothing
  , _eCRRepositoryRepositoryPolicyText = Nothing
  , _eCRRepositoryTags = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-tags
ecrrTags :: Lens' ECRRepository (Maybe [Tag])
ecrrTags = lens _eCRRepositoryTags (\s a -> s { _eCRRepositoryTags = a })

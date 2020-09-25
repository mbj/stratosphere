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
  { _eCRRepositoryImageScanningConfiguration :: Maybe Object
  , _eCRRepositoryImageTagMutability :: Maybe (Val Text)
  , _eCRRepositoryLifecyclePolicy :: Maybe ECRRepositoryLifecyclePolicy
  , _eCRRepositoryRepositoryName :: Maybe (Val Text)
  , _eCRRepositoryTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ECRRepository where
  toResourceProperties ECRRepository{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECR::Repository"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("ImageScanningConfiguration",) . toJSON) _eCRRepositoryImageScanningConfiguration
        , fmap (("ImageTagMutability",) . toJSON) _eCRRepositoryImageTagMutability
        , fmap (("LifecyclePolicy",) . toJSON) _eCRRepositoryLifecyclePolicy
        , fmap (("RepositoryName",) . toJSON) _eCRRepositoryRepositoryName
        , fmap (("Tags",) . toJSON) _eCRRepositoryTags
        ]
    }

-- | Constructor for 'ECRRepository' containing required fields as arguments.
ecrRepository
  :: ECRRepository
ecrRepository  =
  ECRRepository
  { _eCRRepositoryImageScanningConfiguration = Nothing
  , _eCRRepositoryImageTagMutability = Nothing
  , _eCRRepositoryLifecyclePolicy = Nothing
  , _eCRRepositoryRepositoryName = Nothing
  , _eCRRepositoryTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-imagescanningconfiguration
ecrrImageScanningConfiguration :: Lens' ECRRepository (Maybe Object)
ecrrImageScanningConfiguration = lens _eCRRepositoryImageScanningConfiguration (\s a -> s { _eCRRepositoryImageScanningConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-imagetagmutability
ecrrImageTagMutability :: Lens' ECRRepository (Maybe (Val Text))
ecrrImageTagMutability = lens _eCRRepositoryImageTagMutability (\s a -> s { _eCRRepositoryImageTagMutability = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-lifecyclepolicy
ecrrLifecyclePolicy :: Lens' ECRRepository (Maybe ECRRepositoryLifecyclePolicy)
ecrrLifecyclePolicy = lens _eCRRepositoryLifecyclePolicy (\s a -> s { _eCRRepositoryLifecyclePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositoryname
ecrrRepositoryName :: Lens' ECRRepository (Maybe (Val Text))
ecrrRepositoryName = lens _eCRRepositoryRepositoryName (\s a -> s { _eCRRepositoryRepositoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-tags
ecrrTags :: Lens' ECRRepository (Maybe [Tag])
ecrrTags = lens _eCRRepositoryTags (\s a -> s { _eCRRepositoryTags = a })

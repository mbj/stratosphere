{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html

module Stratosphere.ResourceProperties.ECRRepositoryLifecyclePolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for ECRRepositoryLifecyclePolicy. See
-- 'ecrRepositoryLifecyclePolicy' for a more convenient constructor.
data ECRRepositoryLifecyclePolicy =
  ECRRepositoryLifecyclePolicy
  { _eCRRepositoryLifecyclePolicyLifecyclePolicyText :: Maybe (Val Text)
  , _eCRRepositoryLifecyclePolicyRegistryId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECRRepositoryLifecyclePolicy where
  toJSON ECRRepositoryLifecyclePolicy{..} =
    object $
    catMaybes
    [ fmap (("LifecyclePolicyText",) . toJSON) _eCRRepositoryLifecyclePolicyLifecyclePolicyText
    , fmap (("RegistryId",) . toJSON) _eCRRepositoryLifecyclePolicyRegistryId
    ]

-- | Constructor for 'ECRRepositoryLifecyclePolicy' containing required fields
-- as arguments.
ecrRepositoryLifecyclePolicy
  :: ECRRepositoryLifecyclePolicy
ecrRepositoryLifecyclePolicy  =
  ECRRepositoryLifecyclePolicy
  { _eCRRepositoryLifecyclePolicyLifecyclePolicyText = Nothing
  , _eCRRepositoryLifecyclePolicyRegistryId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-lifecyclepolicytext
ecrrlpLifecyclePolicyText :: Lens' ECRRepositoryLifecyclePolicy (Maybe (Val Text))
ecrrlpLifecyclePolicyText = lens _eCRRepositoryLifecyclePolicyLifecyclePolicyText (\s a -> s { _eCRRepositoryLifecyclePolicyLifecyclePolicyText = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-registryid
ecrrlpRegistryId :: Lens' ECRRepositoryLifecyclePolicy (Maybe (Val Text))
ecrrlpRegistryId = lens _eCRRepositoryLifecyclePolicyRegistryId (\s a -> s { _eCRRepositoryLifecyclePolicyRegistryId = a })

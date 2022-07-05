{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html

module Stratosphere.Resources.DLMLifecyclePolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DLMLifecyclePolicyPolicyDetails

-- | Full data type definition for DLMLifecyclePolicy. See
-- 'dlmLifecyclePolicy' for a more convenient constructor.
data DLMLifecyclePolicy =
  DLMLifecyclePolicy
  { _dLMLifecyclePolicyDescription :: Maybe (Val Text)
  , _dLMLifecyclePolicyExecutionRoleArn :: Maybe (Val Text)
  , _dLMLifecyclePolicyPolicyDetails :: Maybe DLMLifecyclePolicyPolicyDetails
  , _dLMLifecyclePolicyState :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties DLMLifecyclePolicy where
  toResourceProperties DLMLifecyclePolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DLM::LifecyclePolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _dLMLifecyclePolicyDescription
        , fmap (("ExecutionRoleArn",) . toJSON) _dLMLifecyclePolicyExecutionRoleArn
        , fmap (("PolicyDetails",) . toJSON) _dLMLifecyclePolicyPolicyDetails
        , fmap (("State",) . toJSON) _dLMLifecyclePolicyState
        ]
    }

-- | Constructor for 'DLMLifecyclePolicy' containing required fields as
-- arguments.
dlmLifecyclePolicy
  :: DLMLifecyclePolicy
dlmLifecyclePolicy  =
  DLMLifecyclePolicy
  { _dLMLifecyclePolicyDescription = Nothing
  , _dLMLifecyclePolicyExecutionRoleArn = Nothing
  , _dLMLifecyclePolicyPolicyDetails = Nothing
  , _dLMLifecyclePolicyState = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-description
dlmlpDescription :: Lens' DLMLifecyclePolicy (Maybe (Val Text))
dlmlpDescription = lens _dLMLifecyclePolicyDescription (\s a -> s { _dLMLifecyclePolicyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-executionrolearn
dlmlpExecutionRoleArn :: Lens' DLMLifecyclePolicy (Maybe (Val Text))
dlmlpExecutionRoleArn = lens _dLMLifecyclePolicyExecutionRoleArn (\s a -> s { _dLMLifecyclePolicyExecutionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-policydetails
dlmlpPolicyDetails :: Lens' DLMLifecyclePolicy (Maybe DLMLifecyclePolicyPolicyDetails)
dlmlpPolicyDetails = lens _dLMLifecyclePolicyPolicyDetails (\s a -> s { _dLMLifecyclePolicyPolicyDetails = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-state
dlmlpState :: Lens' DLMLifecyclePolicy (Maybe (Val Text))
dlmlpState = lens _dLMLifecyclePolicyState (\s a -> s { _dLMLifecyclePolicyState = a })

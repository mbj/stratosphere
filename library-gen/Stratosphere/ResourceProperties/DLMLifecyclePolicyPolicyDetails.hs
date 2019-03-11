{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyPolicyDetails where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DLMLifecyclePolicySchedule
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DLMLifecyclePolicyPolicyDetails. See
-- 'dlmLifecyclePolicyPolicyDetails' for a more convenient constructor.
data DLMLifecyclePolicyPolicyDetails =
  DLMLifecyclePolicyPolicyDetails
  { _dLMLifecyclePolicyPolicyDetailsResourceTypes :: Maybe (ValList Text)
  , _dLMLifecyclePolicyPolicyDetailsSchedules :: Maybe [DLMLifecyclePolicySchedule]
  , _dLMLifecyclePolicyPolicyDetailsTargetTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyPolicyDetails where
  toJSON DLMLifecyclePolicyPolicyDetails{..} =
    object $
    catMaybes
    [ fmap (("ResourceTypes",) . toJSON) _dLMLifecyclePolicyPolicyDetailsResourceTypes
    , fmap (("Schedules",) . toJSON) _dLMLifecyclePolicyPolicyDetailsSchedules
    , fmap (("TargetTags",) . toJSON) _dLMLifecyclePolicyPolicyDetailsTargetTags
    ]

-- | Constructor for 'DLMLifecyclePolicyPolicyDetails' containing required
-- fields as arguments.
dlmLifecyclePolicyPolicyDetails
  :: DLMLifecyclePolicyPolicyDetails
dlmLifecyclePolicyPolicyDetails  =
  DLMLifecyclePolicyPolicyDetails
  { _dLMLifecyclePolicyPolicyDetailsResourceTypes = Nothing
  , _dLMLifecyclePolicyPolicyDetailsSchedules = Nothing
  , _dLMLifecyclePolicyPolicyDetailsTargetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-resourcetypes
dlmlppdResourceTypes :: Lens' DLMLifecyclePolicyPolicyDetails (Maybe (ValList Text))
dlmlppdResourceTypes = lens _dLMLifecyclePolicyPolicyDetailsResourceTypes (\s a -> s { _dLMLifecyclePolicyPolicyDetailsResourceTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-schedules
dlmlppdSchedules :: Lens' DLMLifecyclePolicyPolicyDetails (Maybe [DLMLifecyclePolicySchedule])
dlmlppdSchedules = lens _dLMLifecyclePolicyPolicyDetailsSchedules (\s a -> s { _dLMLifecyclePolicyPolicyDetailsSchedules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-targettags
dlmlppdTargetTags :: Lens' DLMLifecyclePolicyPolicyDetails (Maybe [Tag])
dlmlppdTargetTags = lens _dLMLifecyclePolicyPolicyDetailsTargetTags (\s a -> s { _dLMLifecyclePolicyPolicyDetailsTargetTags = a })

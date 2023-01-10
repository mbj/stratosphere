
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyPolicyDetails where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DLMLifecyclePolicyParameters
import Stratosphere.ResourceProperties.DLMLifecyclePolicySchedule
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DLMLifecyclePolicyPolicyDetails. See
-- 'dlmLifecyclePolicyPolicyDetails' for a more convenient constructor.
data DLMLifecyclePolicyPolicyDetails =
  DLMLifecyclePolicyPolicyDetails
  { _dLMLifecyclePolicyPolicyDetailsParameters :: Maybe DLMLifecyclePolicyParameters
  , _dLMLifecyclePolicyPolicyDetailsPolicyType :: Maybe (Val Text)
  , _dLMLifecyclePolicyPolicyDetailsResourceTypes :: ValList Text
  , _dLMLifecyclePolicyPolicyDetailsSchedules :: [DLMLifecyclePolicySchedule]
  , _dLMLifecyclePolicyPolicyDetailsTargetTags :: [Tag]
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyPolicyDetails where
  toJSON DLMLifecyclePolicyPolicyDetails{..} =
    object $
    catMaybes
    [ fmap (("Parameters",) . toJSON) _dLMLifecyclePolicyPolicyDetailsParameters
    , fmap (("PolicyType",) . toJSON) _dLMLifecyclePolicyPolicyDetailsPolicyType
    , (Just . ("ResourceTypes",) . toJSON) _dLMLifecyclePolicyPolicyDetailsResourceTypes
    , (Just . ("Schedules",) . toJSON) _dLMLifecyclePolicyPolicyDetailsSchedules
    , (Just . ("TargetTags",) . toJSON) _dLMLifecyclePolicyPolicyDetailsTargetTags
    ]

-- | Constructor for 'DLMLifecyclePolicyPolicyDetails' containing required
-- fields as arguments.
dlmLifecyclePolicyPolicyDetails
  :: ValList Text -- ^ 'dlmlppdResourceTypes'
  -> [DLMLifecyclePolicySchedule] -- ^ 'dlmlppdSchedules'
  -> [Tag] -- ^ 'dlmlppdTargetTags'
  -> DLMLifecyclePolicyPolicyDetails
dlmLifecyclePolicyPolicyDetails resourceTypesarg schedulesarg targetTagsarg =
  DLMLifecyclePolicyPolicyDetails
  { _dLMLifecyclePolicyPolicyDetailsParameters = Nothing
  , _dLMLifecyclePolicyPolicyDetailsPolicyType = Nothing
  , _dLMLifecyclePolicyPolicyDetailsResourceTypes = resourceTypesarg
  , _dLMLifecyclePolicyPolicyDetailsSchedules = schedulesarg
  , _dLMLifecyclePolicyPolicyDetailsTargetTags = targetTagsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-parameters
dlmlppdParameters :: Lens' DLMLifecyclePolicyPolicyDetails (Maybe DLMLifecyclePolicyParameters)
dlmlppdParameters = lens _dLMLifecyclePolicyPolicyDetailsParameters (\s a -> s { _dLMLifecyclePolicyPolicyDetailsParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-policytype
dlmlppdPolicyType :: Lens' DLMLifecyclePolicyPolicyDetails (Maybe (Val Text))
dlmlppdPolicyType = lens _dLMLifecyclePolicyPolicyDetailsPolicyType (\s a -> s { _dLMLifecyclePolicyPolicyDetailsPolicyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-resourcetypes
dlmlppdResourceTypes :: Lens' DLMLifecyclePolicyPolicyDetails (ValList Text)
dlmlppdResourceTypes = lens _dLMLifecyclePolicyPolicyDetailsResourceTypes (\s a -> s { _dLMLifecyclePolicyPolicyDetailsResourceTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-schedules
dlmlppdSchedules :: Lens' DLMLifecyclePolicyPolicyDetails [DLMLifecyclePolicySchedule]
dlmlppdSchedules = lens _dLMLifecyclePolicyPolicyDetailsSchedules (\s a -> s { _dLMLifecyclePolicyPolicyDetailsSchedules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-targettags
dlmlppdTargetTags :: Lens' DLMLifecyclePolicyPolicyDetails [Tag]
dlmlppdTargetTags = lens _dLMLifecyclePolicyPolicyDetailsTargetTags (\s a -> s { _dLMLifecyclePolicyPolicyDetailsTargetTags = a })

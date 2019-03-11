{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html

module Stratosphere.ResourceProperties.SSMPatchBaselineRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMPatchBaselinePatchFilterGroup

-- | Full data type definition for SSMPatchBaselineRule. See
-- 'ssmPatchBaselineRule' for a more convenient constructor.
data SSMPatchBaselineRule =
  SSMPatchBaselineRule
  { _sSMPatchBaselineRuleApproveAfterDays :: Maybe (Val Integer)
  , _sSMPatchBaselineRuleComplianceLevel :: Maybe (Val Text)
  , _sSMPatchBaselineRuleEnableNonSecurity :: Maybe (Val Bool)
  , _sSMPatchBaselineRulePatchFilterGroup :: Maybe SSMPatchBaselinePatchFilterGroup
  } deriving (Show, Eq)

instance ToJSON SSMPatchBaselineRule where
  toJSON SSMPatchBaselineRule{..} =
    object $
    catMaybes
    [ fmap (("ApproveAfterDays",) . toJSON . fmap Integer') _sSMPatchBaselineRuleApproveAfterDays
    , fmap (("ComplianceLevel",) . toJSON) _sSMPatchBaselineRuleComplianceLevel
    , fmap (("EnableNonSecurity",) . toJSON . fmap Bool') _sSMPatchBaselineRuleEnableNonSecurity
    , fmap (("PatchFilterGroup",) . toJSON) _sSMPatchBaselineRulePatchFilterGroup
    ]

-- | Constructor for 'SSMPatchBaselineRule' containing required fields as
-- arguments.
ssmPatchBaselineRule
  :: SSMPatchBaselineRule
ssmPatchBaselineRule  =
  SSMPatchBaselineRule
  { _sSMPatchBaselineRuleApproveAfterDays = Nothing
  , _sSMPatchBaselineRuleComplianceLevel = Nothing
  , _sSMPatchBaselineRuleEnableNonSecurity = Nothing
  , _sSMPatchBaselineRulePatchFilterGroup = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-approveafterdays
ssmpbrApproveAfterDays :: Lens' SSMPatchBaselineRule (Maybe (Val Integer))
ssmpbrApproveAfterDays = lens _sSMPatchBaselineRuleApproveAfterDays (\s a -> s { _sSMPatchBaselineRuleApproveAfterDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-compliancelevel
ssmpbrComplianceLevel :: Lens' SSMPatchBaselineRule (Maybe (Val Text))
ssmpbrComplianceLevel = lens _sSMPatchBaselineRuleComplianceLevel (\s a -> s { _sSMPatchBaselineRuleComplianceLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-enablenonsecurity
ssmpbrEnableNonSecurity :: Lens' SSMPatchBaselineRule (Maybe (Val Bool))
ssmpbrEnableNonSecurity = lens _sSMPatchBaselineRuleEnableNonSecurity (\s a -> s { _sSMPatchBaselineRuleEnableNonSecurity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-patchfiltergroup
ssmpbrPatchFilterGroup :: Lens' SSMPatchBaselineRule (Maybe SSMPatchBaselinePatchFilterGroup)
ssmpbrPatchFilterGroup = lens _sSMPatchBaselineRulePatchFilterGroup (\s a -> s { _sSMPatchBaselineRulePatchFilterGroup = a })

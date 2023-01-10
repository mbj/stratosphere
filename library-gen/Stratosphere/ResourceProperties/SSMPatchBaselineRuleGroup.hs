
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rulegroup.html

module Stratosphere.ResourceProperties.SSMPatchBaselineRuleGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMPatchBaselineRule

-- | Full data type definition for SSMPatchBaselineRuleGroup. See
-- 'ssmPatchBaselineRuleGroup' for a more convenient constructor.
data SSMPatchBaselineRuleGroup =
  SSMPatchBaselineRuleGroup
  { _sSMPatchBaselineRuleGroupPatchRules :: Maybe [SSMPatchBaselineRule]
  } deriving (Show, Eq)

instance ToJSON SSMPatchBaselineRuleGroup where
  toJSON SSMPatchBaselineRuleGroup{..} =
    object $
    catMaybes
    [ fmap (("PatchRules",) . toJSON) _sSMPatchBaselineRuleGroupPatchRules
    ]

-- | Constructor for 'SSMPatchBaselineRuleGroup' containing required fields as
-- arguments.
ssmPatchBaselineRuleGroup
  :: SSMPatchBaselineRuleGroup
ssmPatchBaselineRuleGroup  =
  SSMPatchBaselineRuleGroup
  { _sSMPatchBaselineRuleGroupPatchRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rulegroup.html#cfn-ssm-patchbaseline-rulegroup-patchrules
ssmpbrgPatchRules :: Lens' SSMPatchBaselineRuleGroup (Maybe [SSMPatchBaselineRule])
ssmpbrgPatchRules = lens _sSMPatchBaselineRuleGroupPatchRules (\s a -> s { _sSMPatchBaselineRuleGroupPatchRules = a })


-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformation where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupTextTransformation. See
-- 'waFv2RuleGroupTextTransformation' for a more convenient constructor.
data WAFv2RuleGroupTextTransformation =
  WAFv2RuleGroupTextTransformation
  { _wAFv2RuleGroupTextTransformationPriority :: Val Integer
  , _wAFv2RuleGroupTextTransformationType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupTextTransformation where
  toJSON WAFv2RuleGroupTextTransformation{..} =
    object $
    catMaybes
    [ (Just . ("Priority",) . toJSON) _wAFv2RuleGroupTextTransformationPriority
    , (Just . ("Type",) . toJSON) _wAFv2RuleGroupTextTransformationType
    ]

-- | Constructor for 'WAFv2RuleGroupTextTransformation' containing required
-- fields as arguments.
waFv2RuleGroupTextTransformation
  :: Val Integer -- ^ 'wafrgttPriority'
  -> Val Text -- ^ 'wafrgttType'
  -> WAFv2RuleGroupTextTransformation
waFv2RuleGroupTextTransformation priorityarg typearg =
  WAFv2RuleGroupTextTransformation
  { _wAFv2RuleGroupTextTransformationPriority = priorityarg
  , _wAFv2RuleGroupTextTransformationType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html#cfn-wafv2-rulegroup-texttransformation-priority
wafrgttPriority :: Lens' WAFv2RuleGroupTextTransformation (Val Integer)
wafrgttPriority = lens _wAFv2RuleGroupTextTransformationPriority (\s a -> s { _wAFv2RuleGroupTextTransformationPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html#cfn-wafv2-rulegroup-texttransformation-type
wafrgttType :: Lens' WAFv2RuleGroupTextTransformation (Val Text)
wafrgttType = lens _wAFv2RuleGroupTextTransformationType (\s a -> s { _wAFv2RuleGroupTextTransformationType = a })

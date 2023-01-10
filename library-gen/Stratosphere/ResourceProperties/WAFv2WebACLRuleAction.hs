
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html

module Stratosphere.ResourceProperties.WAFv2WebACLRuleAction where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLRuleAction. See
-- 'waFv2WebACLRuleAction' for a more convenient constructor.
data WAFv2WebACLRuleAction =
  WAFv2WebACLRuleAction
  { _wAFv2WebACLRuleActionAllow :: Maybe Object
  , _wAFv2WebACLRuleActionBlock :: Maybe Object
  , _wAFv2WebACLRuleActionCount :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRuleAction where
  toJSON WAFv2WebACLRuleAction{..} =
    object $
    catMaybes
    [ fmap (("Allow",) . toJSON) _wAFv2WebACLRuleActionAllow
    , fmap (("Block",) . toJSON) _wAFv2WebACLRuleActionBlock
    , fmap (("Count",) . toJSON) _wAFv2WebACLRuleActionCount
    ]

-- | Constructor for 'WAFv2WebACLRuleAction' containing required fields as
-- arguments.
waFv2WebACLRuleAction
  :: WAFv2WebACLRuleAction
waFv2WebACLRuleAction  =
  WAFv2WebACLRuleAction
  { _wAFv2WebACLRuleActionAllow = Nothing
  , _wAFv2WebACLRuleActionBlock = Nothing
  , _wAFv2WebACLRuleActionCount = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-allow
wafwaclraAllow :: Lens' WAFv2WebACLRuleAction (Maybe Object)
wafwaclraAllow = lens _wAFv2WebACLRuleActionAllow (\s a -> s { _wAFv2WebACLRuleActionAllow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-block
wafwaclraBlock :: Lens' WAFv2WebACLRuleAction (Maybe Object)
wafwaclraBlock = lens _wAFv2WebACLRuleActionBlock (\s a -> s { _wAFv2WebACLRuleActionBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleaction.html#cfn-wafv2-webacl-ruleaction-count
wafwaclraCount :: Lens' WAFv2WebACLRuleAction (Maybe Object)
wafwaclraCount = lens _wAFv2WebACLRuleActionCount (\s a -> s { _wAFv2WebACLRuleActionCount = a })

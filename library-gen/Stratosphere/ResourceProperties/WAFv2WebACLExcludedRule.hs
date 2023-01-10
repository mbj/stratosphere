
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html

module Stratosphere.ResourceProperties.WAFv2WebACLExcludedRule where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLExcludedRule. See
-- 'waFv2WebACLExcludedRule' for a more convenient constructor.
data WAFv2WebACLExcludedRule =
  WAFv2WebACLExcludedRule
  { _wAFv2WebACLExcludedRuleName :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLExcludedRule where
  toJSON WAFv2WebACLExcludedRule{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _wAFv2WebACLExcludedRuleName
    ]

-- | Constructor for 'WAFv2WebACLExcludedRule' containing required fields as
-- arguments.
waFv2WebACLExcludedRule
  :: Val Text -- ^ 'wafwaclerName'
  -> WAFv2WebACLExcludedRule
waFv2WebACLExcludedRule namearg =
  WAFv2WebACLExcludedRule
  { _wAFv2WebACLExcludedRuleName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html#cfn-wafv2-webacl-excludedrule-name
wafwaclerName :: Lens' WAFv2WebACLExcludedRule (Val Text)
wafwaclerName = lens _wAFv2WebACLExcludedRuleName (\s a -> s { _wAFv2WebACLExcludedRuleName = a })

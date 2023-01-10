
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupAndStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThree

-- | Full data type definition for WAFv2RuleGroupAndStatementTwo. See
-- 'waFv2RuleGroupAndStatementTwo' for a more convenient constructor.
data WAFv2RuleGroupAndStatementTwo =
  WAFv2RuleGroupAndStatementTwo
  { _wAFv2RuleGroupAndStatementTwoStatements :: [WAFv2RuleGroupStatementThree]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupAndStatementTwo where
  toJSON WAFv2RuleGroupAndStatementTwo{..} =
    object $
    catMaybes
    [ (Just . ("Statements",) . toJSON) _wAFv2RuleGroupAndStatementTwoStatements
    ]

-- | Constructor for 'WAFv2RuleGroupAndStatementTwo' containing required
-- fields as arguments.
waFv2RuleGroupAndStatementTwo
  :: [WAFv2RuleGroupStatementThree] -- ^ 'wafrgastStatements'
  -> WAFv2RuleGroupAndStatementTwo
waFv2RuleGroupAndStatementTwo statementsarg =
  WAFv2RuleGroupAndStatementTwo
  { _wAFv2RuleGroupAndStatementTwoStatements = statementsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementtwo.html#cfn-wafv2-rulegroup-andstatementtwo-statements
wafrgastStatements :: Lens' WAFv2RuleGroupAndStatementTwo [WAFv2RuleGroupStatementThree]
wafrgastStatements = lens _wAFv2RuleGroupAndStatementTwoStatements (\s a -> s { _wAFv2RuleGroupAndStatementTwoStatements = a })

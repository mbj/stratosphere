
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-notstatementone.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupNotStatementOne where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementTwo

-- | Full data type definition for WAFv2RuleGroupNotStatementOne. See
-- 'waFv2RuleGroupNotStatementOne' for a more convenient constructor.
data WAFv2RuleGroupNotStatementOne =
  WAFv2RuleGroupNotStatementOne
  { _wAFv2RuleGroupNotStatementOneStatement :: WAFv2RuleGroupStatementTwo
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupNotStatementOne where
  toJSON WAFv2RuleGroupNotStatementOne{..} =
    object $
    catMaybes
    [ (Just . ("Statement",) . toJSON) _wAFv2RuleGroupNotStatementOneStatement
    ]

-- | Constructor for 'WAFv2RuleGroupNotStatementOne' containing required
-- fields as arguments.
waFv2RuleGroupNotStatementOne
  :: WAFv2RuleGroupStatementTwo -- ^ 'wafrgnsoStatement'
  -> WAFv2RuleGroupNotStatementOne
waFv2RuleGroupNotStatementOne statementarg =
  WAFv2RuleGroupNotStatementOne
  { _wAFv2RuleGroupNotStatementOneStatement = statementarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-notstatementone.html#cfn-wafv2-rulegroup-notstatementone-statement
wafrgnsoStatement :: Lens' WAFv2RuleGroupNotStatementOne WAFv2RuleGroupStatementTwo
wafrgnsoStatement = lens _wAFv2RuleGroupNotStatementOneStatement (\s a -> s { _wAFv2RuleGroupNotStatementOneStatement = a })

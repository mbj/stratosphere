
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupOrStatementTwo where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThree

-- | Full data type definition for WAFv2RuleGroupOrStatementTwo. See
-- 'waFv2RuleGroupOrStatementTwo' for a more convenient constructor.
data WAFv2RuleGroupOrStatementTwo =
  WAFv2RuleGroupOrStatementTwo
  { _wAFv2RuleGroupOrStatementTwoStatements :: [WAFv2RuleGroupStatementThree]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupOrStatementTwo where
  toJSON WAFv2RuleGroupOrStatementTwo{..} =
    object $
    catMaybes
    [ (Just . ("Statements",) . toJSON) _wAFv2RuleGroupOrStatementTwoStatements
    ]

-- | Constructor for 'WAFv2RuleGroupOrStatementTwo' containing required fields
-- as arguments.
waFv2RuleGroupOrStatementTwo
  :: [WAFv2RuleGroupStatementThree] -- ^ 'wafrgostStatements'
  -> WAFv2RuleGroupOrStatementTwo
waFv2RuleGroupOrStatementTwo statementsarg =
  WAFv2RuleGroupOrStatementTwo
  { _wAFv2RuleGroupOrStatementTwoStatements = statementsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementtwo.html#cfn-wafv2-rulegroup-orstatementtwo-statements
wafrgostStatements :: Lens' WAFv2RuleGroupOrStatementTwo [WAFv2RuleGroupStatementThree]
wafrgostStatements = lens _wAFv2RuleGroupOrStatementTwoStatements (\s a -> s { _wAFv2RuleGroupOrStatementTwoStatements = a })

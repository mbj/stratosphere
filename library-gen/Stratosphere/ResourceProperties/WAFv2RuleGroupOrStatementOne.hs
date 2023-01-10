
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementone.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupOrStatementOne where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementTwo

-- | Full data type definition for WAFv2RuleGroupOrStatementOne. See
-- 'waFv2RuleGroupOrStatementOne' for a more convenient constructor.
data WAFv2RuleGroupOrStatementOne =
  WAFv2RuleGroupOrStatementOne
  { _wAFv2RuleGroupOrStatementOneStatements :: [WAFv2RuleGroupStatementTwo]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupOrStatementOne where
  toJSON WAFv2RuleGroupOrStatementOne{..} =
    object $
    catMaybes
    [ (Just . ("Statements",) . toJSON) _wAFv2RuleGroupOrStatementOneStatements
    ]

-- | Constructor for 'WAFv2RuleGroupOrStatementOne' containing required fields
-- as arguments.
waFv2RuleGroupOrStatementOne
  :: [WAFv2RuleGroupStatementTwo] -- ^ 'wafrgosoStatements'
  -> WAFv2RuleGroupOrStatementOne
waFv2RuleGroupOrStatementOne statementsarg =
  WAFv2RuleGroupOrStatementOne
  { _wAFv2RuleGroupOrStatementOneStatements = statementsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementone.html#cfn-wafv2-rulegroup-orstatementone-statements
wafrgosoStatements :: Lens' WAFv2RuleGroupOrStatementOne [WAFv2RuleGroupStatementTwo]
wafrgosoStatements = lens _wAFv2RuleGroupOrStatementOneStatements (\s a -> s { _wAFv2RuleGroupOrStatementOneStatements = a })

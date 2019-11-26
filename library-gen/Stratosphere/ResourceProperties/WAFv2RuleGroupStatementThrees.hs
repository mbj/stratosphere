{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthrees.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThrees where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThree

-- | Full data type definition for WAFv2RuleGroupStatementThrees. See
-- 'waFv2RuleGroupStatementThrees' for a more convenient constructor.
data WAFv2RuleGroupStatementThrees =
  WAFv2RuleGroupStatementThrees
  { _wAFv2RuleGroupStatementThreesStatementThrees :: Maybe [WAFv2RuleGroupStatementThree]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupStatementThrees where
  toJSON WAFv2RuleGroupStatementThrees{..} =
    object $
    catMaybes
    [ fmap (("StatementThrees",) . toJSON) _wAFv2RuleGroupStatementThreesStatementThrees
    ]

-- | Constructor for 'WAFv2RuleGroupStatementThrees' containing required
-- fields as arguments.
waFv2RuleGroupStatementThrees
  :: WAFv2RuleGroupStatementThrees
waFv2RuleGroupStatementThrees  =
  WAFv2RuleGroupStatementThrees
  { _wAFv2RuleGroupStatementThreesStatementThrees = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthrees.html#cfn-wafv2-rulegroup-statementthrees-statementthrees
wafrgstStatementThrees :: Lens' WAFv2RuleGroupStatementThrees (Maybe [WAFv2RuleGroupStatementThree])
wafrgstStatementThrees = lens _wAFv2RuleGroupStatementThreesStatementThrees (\s a -> s { _wAFv2RuleGroupStatementThreesStatementThrees = a })

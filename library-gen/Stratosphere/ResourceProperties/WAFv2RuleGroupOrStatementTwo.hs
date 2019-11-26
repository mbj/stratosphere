{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupOrStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThrees

-- | Full data type definition for WAFv2RuleGroupOrStatementTwo. See
-- 'waFv2RuleGroupOrStatementTwo' for a more convenient constructor.
data WAFv2RuleGroupOrStatementTwo =
  WAFv2RuleGroupOrStatementTwo
  { _wAFv2RuleGroupOrStatementTwoStatements :: Maybe WAFv2RuleGroupStatementThrees
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupOrStatementTwo where
  toJSON WAFv2RuleGroupOrStatementTwo{..} =
    object $
    catMaybes
    [ fmap (("Statements",) . toJSON) _wAFv2RuleGroupOrStatementTwoStatements
    ]

-- | Constructor for 'WAFv2RuleGroupOrStatementTwo' containing required fields
-- as arguments.
waFv2RuleGroupOrStatementTwo
  :: WAFv2RuleGroupOrStatementTwo
waFv2RuleGroupOrStatementTwo  =
  WAFv2RuleGroupOrStatementTwo
  { _wAFv2RuleGroupOrStatementTwoStatements = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-orstatementtwo.html#cfn-wafv2-rulegroup-orstatementtwo-statements
wafrgostStatements :: Lens' WAFv2RuleGroupOrStatementTwo (Maybe WAFv2RuleGroupStatementThrees)
wafrgostStatements = lens _wAFv2RuleGroupOrStatementTwoStatements (\s a -> s { _wAFv2RuleGroupOrStatementTwoStatements = a })

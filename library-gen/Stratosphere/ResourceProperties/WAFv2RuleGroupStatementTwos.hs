{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwos.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupStatementTwos where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementTwo

-- | Full data type definition for WAFv2RuleGroupStatementTwos. See
-- 'waFv2RuleGroupStatementTwos' for a more convenient constructor.
data WAFv2RuleGroupStatementTwos =
  WAFv2RuleGroupStatementTwos
  { _wAFv2RuleGroupStatementTwosStatementTwos :: Maybe [WAFv2RuleGroupStatementTwo]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupStatementTwos where
  toJSON WAFv2RuleGroupStatementTwos{..} =
    object $
    catMaybes
    [ fmap (("StatementTwos",) . toJSON) _wAFv2RuleGroupStatementTwosStatementTwos
    ]

-- | Constructor for 'WAFv2RuleGroupStatementTwos' containing required fields
-- as arguments.
waFv2RuleGroupStatementTwos
  :: WAFv2RuleGroupStatementTwos
waFv2RuleGroupStatementTwos  =
  WAFv2RuleGroupStatementTwos
  { _wAFv2RuleGroupStatementTwosStatementTwos = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwos.html#cfn-wafv2-rulegroup-statementtwos-statementtwos
wafrgstStatementTwos :: Lens' WAFv2RuleGroupStatementTwos (Maybe [WAFv2RuleGroupStatementTwo])
wafrgstStatementTwos = lens _wAFv2RuleGroupStatementTwosStatementTwos (\s a -> s { _wAFv2RuleGroupStatementTwosStatementTwos = a })

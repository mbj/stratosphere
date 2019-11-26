{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementone.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupAndStatementOne where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementTwos

-- | Full data type definition for WAFv2RuleGroupAndStatementOne. See
-- 'waFv2RuleGroupAndStatementOne' for a more convenient constructor.
data WAFv2RuleGroupAndStatementOne =
  WAFv2RuleGroupAndStatementOne
  { _wAFv2RuleGroupAndStatementOneStatements :: Maybe WAFv2RuleGroupStatementTwos
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupAndStatementOne where
  toJSON WAFv2RuleGroupAndStatementOne{..} =
    object $
    catMaybes
    [ fmap (("Statements",) . toJSON) _wAFv2RuleGroupAndStatementOneStatements
    ]

-- | Constructor for 'WAFv2RuleGroupAndStatementOne' containing required
-- fields as arguments.
waFv2RuleGroupAndStatementOne
  :: WAFv2RuleGroupAndStatementOne
waFv2RuleGroupAndStatementOne  =
  WAFv2RuleGroupAndStatementOne
  { _wAFv2RuleGroupAndStatementOneStatements = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatementone.html#cfn-wafv2-rulegroup-andstatementone-statements
wafrgasoStatements :: Lens' WAFv2RuleGroupAndStatementOne (Maybe WAFv2RuleGroupStatementTwos)
wafrgasoStatements = lens _wAFv2RuleGroupAndStatementOneStatements (\s a -> s { _wAFv2RuleGroupAndStatementOneStatements = a })

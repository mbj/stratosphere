{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singlequeryargument.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupSingleQueryArgument where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupSingleQueryArgument. See
-- 'waFv2RuleGroupSingleQueryArgument' for a more convenient constructor.
data WAFv2RuleGroupSingleQueryArgument =
  WAFv2RuleGroupSingleQueryArgument
  { _wAFv2RuleGroupSingleQueryArgumentName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupSingleQueryArgument where
  toJSON WAFv2RuleGroupSingleQueryArgument{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _wAFv2RuleGroupSingleQueryArgumentName
    ]

-- | Constructor for 'WAFv2RuleGroupSingleQueryArgument' containing required
-- fields as arguments.
waFv2RuleGroupSingleQueryArgument
  :: WAFv2RuleGroupSingleQueryArgument
waFv2RuleGroupSingleQueryArgument  =
  WAFv2RuleGroupSingleQueryArgument
  { _wAFv2RuleGroupSingleQueryArgumentName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singlequeryargument.html#cfn-wafv2-rulegroup-singlequeryargument-name
wafrgsqaName :: Lens' WAFv2RuleGroupSingleQueryArgument (Maybe (Val Text))
wafrgsqaName = lens _wAFv2RuleGroupSingleQueryArgumentName (\s a -> s { _wAFv2RuleGroupSingleQueryArgumentName = a })

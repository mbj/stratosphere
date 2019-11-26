{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupSingleHeader
import Stratosphere.ResourceProperties.WAFv2RuleGroupSingleQueryArgument

-- | Full data type definition for WAFv2RuleGroupFieldToMatch. See
-- 'waFv2RuleGroupFieldToMatch' for a more convenient constructor.
data WAFv2RuleGroupFieldToMatch =
  WAFv2RuleGroupFieldToMatch
  { _wAFv2RuleGroupFieldToMatchSingleHeader :: Maybe WAFv2RuleGroupSingleHeader
  , _wAFv2RuleGroupFieldToMatchSingleQueryArgument :: Maybe WAFv2RuleGroupSingleQueryArgument
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupFieldToMatch where
  toJSON WAFv2RuleGroupFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("SingleHeader",) . toJSON) _wAFv2RuleGroupFieldToMatchSingleHeader
    , fmap (("SingleQueryArgument",) . toJSON) _wAFv2RuleGroupFieldToMatchSingleQueryArgument
    ]

-- | Constructor for 'WAFv2RuleGroupFieldToMatch' containing required fields
-- as arguments.
waFv2RuleGroupFieldToMatch
  :: WAFv2RuleGroupFieldToMatch
waFv2RuleGroupFieldToMatch  =
  WAFv2RuleGroupFieldToMatch
  { _wAFv2RuleGroupFieldToMatchSingleHeader = Nothing
  , _wAFv2RuleGroupFieldToMatchSingleQueryArgument = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-singleheader
wafrgftmSingleHeader :: Lens' WAFv2RuleGroupFieldToMatch (Maybe WAFv2RuleGroupSingleHeader)
wafrgftmSingleHeader = lens _wAFv2RuleGroupFieldToMatchSingleHeader (\s a -> s { _wAFv2RuleGroupFieldToMatchSingleHeader = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-singlequeryargument
wafrgftmSingleQueryArgument :: Lens' WAFv2RuleGroupFieldToMatch (Maybe WAFv2RuleGroupSingleQueryArgument)
wafrgftmSingleQueryArgument = lens _wAFv2RuleGroupFieldToMatchSingleQueryArgument (\s a -> s { _wAFv2RuleGroupFieldToMatchSingleQueryArgument = a })

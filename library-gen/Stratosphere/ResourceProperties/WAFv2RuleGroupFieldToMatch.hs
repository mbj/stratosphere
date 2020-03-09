{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupFieldToMatch. See
-- 'waFv2RuleGroupFieldToMatch' for a more convenient constructor.
data WAFv2RuleGroupFieldToMatch =
  WAFv2RuleGroupFieldToMatch
  { _wAFv2RuleGroupFieldToMatchAllQueryArguments :: Maybe Object
  , _wAFv2RuleGroupFieldToMatchBody :: Maybe Object
  , _wAFv2RuleGroupFieldToMatchMethod :: Maybe Object
  , _wAFv2RuleGroupFieldToMatchQueryString :: Maybe Object
  , _wAFv2RuleGroupFieldToMatchSingleHeader :: Maybe Object
  , _wAFv2RuleGroupFieldToMatchSingleQueryArgument :: Maybe Object
  , _wAFv2RuleGroupFieldToMatchUriPath :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupFieldToMatch where
  toJSON WAFv2RuleGroupFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("AllQueryArguments",) . toJSON) _wAFv2RuleGroupFieldToMatchAllQueryArguments
    , fmap (("Body",) . toJSON) _wAFv2RuleGroupFieldToMatchBody
    , fmap (("Method",) . toJSON) _wAFv2RuleGroupFieldToMatchMethod
    , fmap (("QueryString",) . toJSON) _wAFv2RuleGroupFieldToMatchQueryString
    , fmap (("SingleHeader",) . toJSON) _wAFv2RuleGroupFieldToMatchSingleHeader
    , fmap (("SingleQueryArgument",) . toJSON) _wAFv2RuleGroupFieldToMatchSingleQueryArgument
    , fmap (("UriPath",) . toJSON) _wAFv2RuleGroupFieldToMatchUriPath
    ]

-- | Constructor for 'WAFv2RuleGroupFieldToMatch' containing required fields
-- as arguments.
waFv2RuleGroupFieldToMatch
  :: WAFv2RuleGroupFieldToMatch
waFv2RuleGroupFieldToMatch  =
  WAFv2RuleGroupFieldToMatch
  { _wAFv2RuleGroupFieldToMatchAllQueryArguments = Nothing
  , _wAFv2RuleGroupFieldToMatchBody = Nothing
  , _wAFv2RuleGroupFieldToMatchMethod = Nothing
  , _wAFv2RuleGroupFieldToMatchQueryString = Nothing
  , _wAFv2RuleGroupFieldToMatchSingleHeader = Nothing
  , _wAFv2RuleGroupFieldToMatchSingleQueryArgument = Nothing
  , _wAFv2RuleGroupFieldToMatchUriPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-allqueryarguments
wafrgftmAllQueryArguments :: Lens' WAFv2RuleGroupFieldToMatch (Maybe Object)
wafrgftmAllQueryArguments = lens _wAFv2RuleGroupFieldToMatchAllQueryArguments (\s a -> s { _wAFv2RuleGroupFieldToMatchAllQueryArguments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-body
wafrgftmBody :: Lens' WAFv2RuleGroupFieldToMatch (Maybe Object)
wafrgftmBody = lens _wAFv2RuleGroupFieldToMatchBody (\s a -> s { _wAFv2RuleGroupFieldToMatchBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-method
wafrgftmMethod :: Lens' WAFv2RuleGroupFieldToMatch (Maybe Object)
wafrgftmMethod = lens _wAFv2RuleGroupFieldToMatchMethod (\s a -> s { _wAFv2RuleGroupFieldToMatchMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-querystring
wafrgftmQueryString :: Lens' WAFv2RuleGroupFieldToMatch (Maybe Object)
wafrgftmQueryString = lens _wAFv2RuleGroupFieldToMatchQueryString (\s a -> s { _wAFv2RuleGroupFieldToMatchQueryString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-singleheader
wafrgftmSingleHeader :: Lens' WAFv2RuleGroupFieldToMatch (Maybe Object)
wafrgftmSingleHeader = lens _wAFv2RuleGroupFieldToMatchSingleHeader (\s a -> s { _wAFv2RuleGroupFieldToMatchSingleHeader = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-singlequeryargument
wafrgftmSingleQueryArgument :: Lens' WAFv2RuleGroupFieldToMatch (Maybe Object)
wafrgftmSingleQueryArgument = lens _wAFv2RuleGroupFieldToMatchSingleQueryArgument (\s a -> s { _wAFv2RuleGroupFieldToMatchSingleQueryArgument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-fieldtomatch.html#cfn-wafv2-rulegroup-fieldtomatch-uripath
wafrgftmUriPath :: Lens' WAFv2RuleGroupFieldToMatch (Maybe Object)
wafrgftmUriPath = lens _wAFv2RuleGroupFieldToMatchUriPath (\s a -> s { _wAFv2RuleGroupFieldToMatchUriPath = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternset.html

module Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegexPatternSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegularExpressionList

-- | Full data type definition for WAFv2RegexPatternSetRegexPatternSet. See
-- 'waFv2RegexPatternSetRegexPatternSet' for a more convenient constructor.
data WAFv2RegexPatternSetRegexPatternSet =
  WAFv2RegexPatternSetRegexPatternSet
  { _wAFv2RegexPatternSetRegexPatternSetARN :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSetDescription :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSetId :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSetName :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSetRegularExpressionList :: Maybe WAFv2RegexPatternSetRegularExpressionList
  } deriving (Show, Eq)

instance ToJSON WAFv2RegexPatternSetRegexPatternSet where
  toJSON WAFv2RegexPatternSetRegexPatternSet{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetARN
    , fmap (("Description",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetDescription
    , fmap (("Id",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetId
    , fmap (("Name",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetName
    , fmap (("RegularExpressionList",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetRegularExpressionList
    ]

-- | Constructor for 'WAFv2RegexPatternSetRegexPatternSet' containing required
-- fields as arguments.
waFv2RegexPatternSetRegexPatternSet
  :: WAFv2RegexPatternSetRegexPatternSet
waFv2RegexPatternSetRegexPatternSet  =
  WAFv2RegexPatternSetRegexPatternSet
  { _wAFv2RegexPatternSetRegexPatternSetARN = Nothing
  , _wAFv2RegexPatternSetRegexPatternSetDescription = Nothing
  , _wAFv2RegexPatternSetRegexPatternSetId = Nothing
  , _wAFv2RegexPatternSetRegexPatternSetName = Nothing
  , _wAFv2RegexPatternSetRegexPatternSetRegularExpressionList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternset.html#cfn-wafv2-regexpatternset-regexpatternset-arn
wafrpsrpsARN :: Lens' WAFv2RegexPatternSetRegexPatternSet (Maybe (Val Text))
wafrpsrpsARN = lens _wAFv2RegexPatternSetRegexPatternSetARN (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternset.html#cfn-wafv2-regexpatternset-regexpatternset-description
wafrpsrpsDescription :: Lens' WAFv2RegexPatternSetRegexPatternSet (Maybe (Val Text))
wafrpsrpsDescription = lens _wAFv2RegexPatternSetRegexPatternSetDescription (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternset.html#cfn-wafv2-regexpatternset-regexpatternset-id
wafrpsrpsId :: Lens' WAFv2RegexPatternSetRegexPatternSet (Maybe (Val Text))
wafrpsrpsId = lens _wAFv2RegexPatternSetRegexPatternSetId (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternset.html#cfn-wafv2-regexpatternset-regexpatternset-name
wafrpsrpsName :: Lens' WAFv2RegexPatternSetRegexPatternSet (Maybe (Val Text))
wafrpsrpsName = lens _wAFv2RegexPatternSetRegexPatternSetName (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternset.html#cfn-wafv2-regexpatternset-regexpatternset-regularexpressionlist
wafrpsrpsRegularExpressionList :: Lens' WAFv2RegexPatternSetRegexPatternSet (Maybe WAFv2RegexPatternSetRegularExpressionList)
wafrpsrpsRegularExpressionList = lens _wAFv2RegexPatternSetRegexPatternSetRegularExpressionList (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetRegularExpressionList = a })

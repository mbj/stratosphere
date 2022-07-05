{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html

module Stratosphere.Resources.WAFRegionalRegexPatternSet where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFRegionalRegexPatternSet. See
-- 'wafRegionalRegexPatternSet' for a more convenient constructor.
data WAFRegionalRegexPatternSet =
  WAFRegionalRegexPatternSet
  { _wAFRegionalRegexPatternSetName :: Val Text
  , _wAFRegionalRegexPatternSetRegexPatternStrings :: ValList Text
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalRegexPatternSet where
  toResourceProperties WAFRegionalRegexPatternSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::RegexPatternSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _wAFRegionalRegexPatternSetName
        , (Just . ("RegexPatternStrings",) . toJSON) _wAFRegionalRegexPatternSetRegexPatternStrings
        ]
    }

-- | Constructor for 'WAFRegionalRegexPatternSet' containing required fields
-- as arguments.
wafRegionalRegexPatternSet
  :: Val Text -- ^ 'wafrrpsName'
  -> ValList Text -- ^ 'wafrrpsRegexPatternStrings'
  -> WAFRegionalRegexPatternSet
wafRegionalRegexPatternSet namearg regexPatternStringsarg =
  WAFRegionalRegexPatternSet
  { _wAFRegionalRegexPatternSetName = namearg
  , _wAFRegionalRegexPatternSetRegexPatternStrings = regexPatternStringsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html#cfn-wafregional-regexpatternset-name
wafrrpsName :: Lens' WAFRegionalRegexPatternSet (Val Text)
wafrrpsName = lens _wAFRegionalRegexPatternSetName (\s a -> s { _wAFRegionalRegexPatternSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-regexpatternset.html#cfn-wafregional-regexpatternset-regexpatternstrings
wafrrpsRegexPatternStrings :: Lens' WAFRegionalRegexPatternSet (ValList Text)
wafrrpsRegexPatternStrings = lens _wAFRegionalRegexPatternSetRegexPatternStrings (\s a -> s { _wAFRegionalRegexPatternSetRegexPatternStrings = a })

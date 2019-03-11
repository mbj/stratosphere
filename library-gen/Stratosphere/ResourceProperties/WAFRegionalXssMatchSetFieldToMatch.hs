{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFRegionalXssMatchSetFieldToMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFRegionalXssMatchSetFieldToMatch. See
-- 'wafRegionalXssMatchSetFieldToMatch' for a more convenient constructor.
data WAFRegionalXssMatchSetFieldToMatch =
  WAFRegionalXssMatchSetFieldToMatch
  { _wAFRegionalXssMatchSetFieldToMatchData :: Maybe (Val Text)
  , _wAFRegionalXssMatchSetFieldToMatchType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalXssMatchSetFieldToMatch where
  toJSON WAFRegionalXssMatchSetFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("Data",) . toJSON) _wAFRegionalXssMatchSetFieldToMatchData
    , (Just . ("Type",) . toJSON) _wAFRegionalXssMatchSetFieldToMatchType
    ]

-- | Constructor for 'WAFRegionalXssMatchSetFieldToMatch' containing required
-- fields as arguments.
wafRegionalXssMatchSetFieldToMatch
  :: Val Text -- ^ 'wafrxmsftmType'
  -> WAFRegionalXssMatchSetFieldToMatch
wafRegionalXssMatchSetFieldToMatch typearg =
  WAFRegionalXssMatchSetFieldToMatch
  { _wAFRegionalXssMatchSetFieldToMatchData = Nothing
  , _wAFRegionalXssMatchSetFieldToMatchType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html#cfn-wafregional-xssmatchset-fieldtomatch-data
wafrxmsftmData :: Lens' WAFRegionalXssMatchSetFieldToMatch (Maybe (Val Text))
wafrxmsftmData = lens _wAFRegionalXssMatchSetFieldToMatchData (\s a -> s { _wAFRegionalXssMatchSetFieldToMatchData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-fieldtomatch.html#cfn-wafregional-xssmatchset-fieldtomatch-type
wafrxmsftmType :: Lens' WAFRegionalXssMatchSetFieldToMatch (Val Text)
wafrxmsftmType = lens _wAFRegionalXssMatchSetFieldToMatchType (\s a -> s { _wAFRegionalXssMatchSetFieldToMatchType = a })

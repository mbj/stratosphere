{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFByteMatchSetFieldToMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFByteMatchSetFieldToMatch. See
-- 'wafByteMatchSetFieldToMatch' for a more convenient constructor.
data WAFByteMatchSetFieldToMatch =
  WAFByteMatchSetFieldToMatch
  { _wAFByteMatchSetFieldToMatchData :: Maybe (Val Text)
  , _wAFByteMatchSetFieldToMatchType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFByteMatchSetFieldToMatch where
  toJSON WAFByteMatchSetFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("Data",) . toJSON) _wAFByteMatchSetFieldToMatchData
    , (Just . ("Type",) . toJSON) _wAFByteMatchSetFieldToMatchType
    ]

-- | Constructor for 'WAFByteMatchSetFieldToMatch' containing required fields
-- as arguments.
wafByteMatchSetFieldToMatch
  :: Val Text -- ^ 'wafbmsftmType'
  -> WAFByteMatchSetFieldToMatch
wafByteMatchSetFieldToMatch typearg =
  WAFByteMatchSetFieldToMatch
  { _wAFByteMatchSetFieldToMatchData = Nothing
  , _wAFByteMatchSetFieldToMatchType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-bytematchset-bytematchtuples-fieldtomatch-data
wafbmsftmData :: Lens' WAFByteMatchSetFieldToMatch (Maybe (Val Text))
wafbmsftmData = lens _wAFByteMatchSetFieldToMatchData (\s a -> s { _wAFByteMatchSetFieldToMatchData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-bytematchset-bytematchtuples-fieldtomatch-type
wafbmsftmType :: Lens' WAFByteMatchSetFieldToMatch (Val Text)
wafbmsftmType = lens _wAFByteMatchSetFieldToMatchType (\s a -> s { _wAFByteMatchSetFieldToMatchType = a })

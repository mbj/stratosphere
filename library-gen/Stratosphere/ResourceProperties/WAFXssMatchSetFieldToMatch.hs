{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFXssMatchSetFieldToMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFXssMatchSetFieldToMatch. See
-- 'wafXssMatchSetFieldToMatch' for a more convenient constructor.
data WAFXssMatchSetFieldToMatch =
  WAFXssMatchSetFieldToMatch
  { _wAFXssMatchSetFieldToMatchData :: Maybe (Val Text)
  , _wAFXssMatchSetFieldToMatchType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFXssMatchSetFieldToMatch where
  toJSON WAFXssMatchSetFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("Data",) . toJSON) _wAFXssMatchSetFieldToMatchData
    , (Just . ("Type",) . toJSON) _wAFXssMatchSetFieldToMatchType
    ]

instance FromJSON WAFXssMatchSetFieldToMatch where
  parseJSON (Object obj) =
    WAFXssMatchSetFieldToMatch <$>
      (obj .:? "Data") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'WAFXssMatchSetFieldToMatch' containing required fields
-- as arguments.
wafXssMatchSetFieldToMatch
  :: Val Text -- ^ 'wafxmsftmType'
  -> WAFXssMatchSetFieldToMatch
wafXssMatchSetFieldToMatch typearg =
  WAFXssMatchSetFieldToMatch
  { _wAFXssMatchSetFieldToMatchData = Nothing
  , _wAFXssMatchSetFieldToMatchType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch-data
wafxmsftmData :: Lens' WAFXssMatchSetFieldToMatch (Maybe (Val Text))
wafxmsftmData = lens _wAFXssMatchSetFieldToMatchData (\s a -> s { _wAFXssMatchSetFieldToMatchData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch-type
wafxmsftmType :: Lens' WAFXssMatchSetFieldToMatch (Val Text)
wafxmsftmType = lens _wAFXssMatchSetFieldToMatchType (\s a -> s { _wAFXssMatchSetFieldToMatchType = a })

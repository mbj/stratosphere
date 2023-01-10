
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html

module Stratosphere.ResourceProperties.WAFRegionalXssMatchSetXssMatchTuple where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalXssMatchSetFieldToMatch

-- | Full data type definition for WAFRegionalXssMatchSetXssMatchTuple. See
-- 'wafRegionalXssMatchSetXssMatchTuple' for a more convenient constructor.
data WAFRegionalXssMatchSetXssMatchTuple =
  WAFRegionalXssMatchSetXssMatchTuple
  { _wAFRegionalXssMatchSetXssMatchTupleFieldToMatch :: WAFRegionalXssMatchSetFieldToMatch
  , _wAFRegionalXssMatchSetXssMatchTupleTextTransformation :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalXssMatchSetXssMatchTuple where
  toJSON WAFRegionalXssMatchSetXssMatchTuple{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFRegionalXssMatchSetXssMatchTupleFieldToMatch
    , (Just . ("TextTransformation",) . toJSON) _wAFRegionalXssMatchSetXssMatchTupleTextTransformation
    ]

-- | Constructor for 'WAFRegionalXssMatchSetXssMatchTuple' containing required
-- fields as arguments.
wafRegionalXssMatchSetXssMatchTuple
  :: WAFRegionalXssMatchSetFieldToMatch -- ^ 'wafrxmsxmtFieldToMatch'
  -> Val Text -- ^ 'wafrxmsxmtTextTransformation'
  -> WAFRegionalXssMatchSetXssMatchTuple
wafRegionalXssMatchSetXssMatchTuple fieldToMatcharg textTransformationarg =
  WAFRegionalXssMatchSetXssMatchTuple
  { _wAFRegionalXssMatchSetXssMatchTupleFieldToMatch = fieldToMatcharg
  , _wAFRegionalXssMatchSetXssMatchTupleTextTransformation = textTransformationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html#cfn-wafregional-xssmatchset-xssmatchtuple-fieldtomatch
wafrxmsxmtFieldToMatch :: Lens' WAFRegionalXssMatchSetXssMatchTuple WAFRegionalXssMatchSetFieldToMatch
wafrxmsxmtFieldToMatch = lens _wAFRegionalXssMatchSetXssMatchTupleFieldToMatch (\s a -> s { _wAFRegionalXssMatchSetXssMatchTupleFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-xssmatchset-xssmatchtuple.html#cfn-wafregional-xssmatchset-xssmatchtuple-texttransformation
wafrxmsxmtTextTransformation :: Lens' WAFRegionalXssMatchSetXssMatchTuple (Val Text)
wafrxmsxmtTextTransformation = lens _wAFRegionalXssMatchSetXssMatchTupleTextTransformation (\s a -> s { _wAFRegionalXssMatchSetXssMatchTupleTextTransformation = a })

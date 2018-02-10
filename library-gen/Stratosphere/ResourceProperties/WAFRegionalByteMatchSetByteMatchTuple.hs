{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html

module Stratosphere.ResourceProperties.WAFRegionalByteMatchSetByteMatchTuple where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalByteMatchSetFieldToMatch

-- | Full data type definition for WAFRegionalByteMatchSetByteMatchTuple. See
-- 'wafRegionalByteMatchSetByteMatchTuple' for a more convenient
-- constructor.
data WAFRegionalByteMatchSetByteMatchTuple =
  WAFRegionalByteMatchSetByteMatchTuple
  { _wAFRegionalByteMatchSetByteMatchTupleFieldToMatch :: WAFRegionalByteMatchSetFieldToMatch
  , _wAFRegionalByteMatchSetByteMatchTuplePositionalConstraint :: Val Text
  , _wAFRegionalByteMatchSetByteMatchTupleTargetString :: Maybe (Val Text)
  , _wAFRegionalByteMatchSetByteMatchTupleTargetStringBase64 :: Maybe (Val Text)
  , _wAFRegionalByteMatchSetByteMatchTupleTextTransformation :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalByteMatchSetByteMatchTuple where
  toJSON WAFRegionalByteMatchSetByteMatchTuple{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFRegionalByteMatchSetByteMatchTupleFieldToMatch
    , (Just . ("PositionalConstraint",) . toJSON) _wAFRegionalByteMatchSetByteMatchTuplePositionalConstraint
    , fmap (("TargetString",) . toJSON) _wAFRegionalByteMatchSetByteMatchTupleTargetString
    , fmap (("TargetStringBase64",) . toJSON) _wAFRegionalByteMatchSetByteMatchTupleTargetStringBase64
    , (Just . ("TextTransformation",) . toJSON) _wAFRegionalByteMatchSetByteMatchTupleTextTransformation
    ]

instance FromJSON WAFRegionalByteMatchSetByteMatchTuple where
  parseJSON (Object obj) =
    WAFRegionalByteMatchSetByteMatchTuple <$>
      (obj .: "FieldToMatch") <*>
      (obj .: "PositionalConstraint") <*>
      (obj .:? "TargetString") <*>
      (obj .:? "TargetStringBase64") <*>
      (obj .: "TextTransformation")
  parseJSON _ = mempty

-- | Constructor for 'WAFRegionalByteMatchSetByteMatchTuple' containing
-- required fields as arguments.
wafRegionalByteMatchSetByteMatchTuple
  :: WAFRegionalByteMatchSetFieldToMatch -- ^ 'wafrbmsbmtFieldToMatch'
  -> Val Text -- ^ 'wafrbmsbmtPositionalConstraint'
  -> Val Text -- ^ 'wafrbmsbmtTextTransformation'
  -> WAFRegionalByteMatchSetByteMatchTuple
wafRegionalByteMatchSetByteMatchTuple fieldToMatcharg positionalConstraintarg textTransformationarg =
  WAFRegionalByteMatchSetByteMatchTuple
  { _wAFRegionalByteMatchSetByteMatchTupleFieldToMatch = fieldToMatcharg
  , _wAFRegionalByteMatchSetByteMatchTuplePositionalConstraint = positionalConstraintarg
  , _wAFRegionalByteMatchSetByteMatchTupleTargetString = Nothing
  , _wAFRegionalByteMatchSetByteMatchTupleTargetStringBase64 = Nothing
  , _wAFRegionalByteMatchSetByteMatchTupleTextTransformation = textTransformationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-fieldtomatch
wafrbmsbmtFieldToMatch :: Lens' WAFRegionalByteMatchSetByteMatchTuple WAFRegionalByteMatchSetFieldToMatch
wafrbmsbmtFieldToMatch = lens _wAFRegionalByteMatchSetByteMatchTupleFieldToMatch (\s a -> s { _wAFRegionalByteMatchSetByteMatchTupleFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-positionalconstraint
wafrbmsbmtPositionalConstraint :: Lens' WAFRegionalByteMatchSetByteMatchTuple (Val Text)
wafrbmsbmtPositionalConstraint = lens _wAFRegionalByteMatchSetByteMatchTuplePositionalConstraint (\s a -> s { _wAFRegionalByteMatchSetByteMatchTuplePositionalConstraint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-targetstring
wafrbmsbmtTargetString :: Lens' WAFRegionalByteMatchSetByteMatchTuple (Maybe (Val Text))
wafrbmsbmtTargetString = lens _wAFRegionalByteMatchSetByteMatchTupleTargetString (\s a -> s { _wAFRegionalByteMatchSetByteMatchTupleTargetString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-targetstringbase64
wafrbmsbmtTargetStringBase64 :: Lens' WAFRegionalByteMatchSetByteMatchTuple (Maybe (Val Text))
wafrbmsbmtTargetStringBase64 = lens _wAFRegionalByteMatchSetByteMatchTupleTargetStringBase64 (\s a -> s { _wAFRegionalByteMatchSetByteMatchTupleTargetStringBase64 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-texttransformation
wafrbmsbmtTextTransformation :: Lens' WAFRegionalByteMatchSetByteMatchTuple (Val Text)
wafrbmsbmtTextTransformation = lens _wAFRegionalByteMatchSetByteMatchTupleTextTransformation (\s a -> s { _wAFRegionalByteMatchSetByteMatchTupleTextTransformation = a })

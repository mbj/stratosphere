{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html

module Stratosphere.ResourceProperties.WAFByteMatchSetByteMatchTuple where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFByteMatchSetFieldToMatch

-- | Full data type definition for WAFByteMatchSetByteMatchTuple. See
-- 'wafByteMatchSetByteMatchTuple' for a more convenient constructor.
data WAFByteMatchSetByteMatchTuple =
  WAFByteMatchSetByteMatchTuple
  { _wAFByteMatchSetByteMatchTupleFieldToMatch :: WAFByteMatchSetFieldToMatch
  , _wAFByteMatchSetByteMatchTuplePositionalConstraint :: Val Text
  , _wAFByteMatchSetByteMatchTupleTargetString :: Maybe (Val Text)
  , _wAFByteMatchSetByteMatchTupleTargetStringBase64 :: Maybe (Val Text)
  , _wAFByteMatchSetByteMatchTupleTextTransformation :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFByteMatchSetByteMatchTuple where
  toJSON WAFByteMatchSetByteMatchTuple{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFByteMatchSetByteMatchTupleFieldToMatch
    , (Just . ("PositionalConstraint",) . toJSON) _wAFByteMatchSetByteMatchTuplePositionalConstraint
    , fmap (("TargetString",) . toJSON) _wAFByteMatchSetByteMatchTupleTargetString
    , fmap (("TargetStringBase64",) . toJSON) _wAFByteMatchSetByteMatchTupleTargetStringBase64
    , (Just . ("TextTransformation",) . toJSON) _wAFByteMatchSetByteMatchTupleTextTransformation
    ]

-- | Constructor for 'WAFByteMatchSetByteMatchTuple' containing required
-- fields as arguments.
wafByteMatchSetByteMatchTuple
  :: WAFByteMatchSetFieldToMatch -- ^ 'wafbmsbmtFieldToMatch'
  -> Val Text -- ^ 'wafbmsbmtPositionalConstraint'
  -> Val Text -- ^ 'wafbmsbmtTextTransformation'
  -> WAFByteMatchSetByteMatchTuple
wafByteMatchSetByteMatchTuple fieldToMatcharg positionalConstraintarg textTransformationarg =
  WAFByteMatchSetByteMatchTuple
  { _wAFByteMatchSetByteMatchTupleFieldToMatch = fieldToMatcharg
  , _wAFByteMatchSetByteMatchTuplePositionalConstraint = positionalConstraintarg
  , _wAFByteMatchSetByteMatchTupleTargetString = Nothing
  , _wAFByteMatchSetByteMatchTupleTargetStringBase64 = Nothing
  , _wAFByteMatchSetByteMatchTupleTextTransformation = textTransformationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-fieldtomatch
wafbmsbmtFieldToMatch :: Lens' WAFByteMatchSetByteMatchTuple WAFByteMatchSetFieldToMatch
wafbmsbmtFieldToMatch = lens _wAFByteMatchSetByteMatchTupleFieldToMatch (\s a -> s { _wAFByteMatchSetByteMatchTupleFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-positionalconstraint
wafbmsbmtPositionalConstraint :: Lens' WAFByteMatchSetByteMatchTuple (Val Text)
wafbmsbmtPositionalConstraint = lens _wAFByteMatchSetByteMatchTuplePositionalConstraint (\s a -> s { _wAFByteMatchSetByteMatchTuplePositionalConstraint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-targetstring
wafbmsbmtTargetString :: Lens' WAFByteMatchSetByteMatchTuple (Maybe (Val Text))
wafbmsbmtTargetString = lens _wAFByteMatchSetByteMatchTupleTargetString (\s a -> s { _wAFByteMatchSetByteMatchTupleTargetString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-targetstringbase64
wafbmsbmtTargetStringBase64 :: Lens' WAFByteMatchSetByteMatchTuple (Maybe (Val Text))
wafbmsbmtTargetStringBase64 = lens _wAFByteMatchSetByteMatchTupleTargetStringBase64 (\s a -> s { _wAFByteMatchSetByteMatchTupleTargetStringBase64 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples.html#cfn-waf-bytematchset-bytematchtuples-texttransformation
wafbmsbmtTextTransformation :: Lens' WAFByteMatchSetByteMatchTuple (Val Text)
wafbmsbmtTextTransformation = lens _wAFByteMatchSetByteMatchTupleTextTransformation (\s a -> s { _wAFByteMatchSetByteMatchTupleTextTransformation = a })

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html

module Stratosphere.ResourceProperties.WAFRegionalGeoMatchSetGeoMatchConstraint where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFRegionalGeoMatchSetGeoMatchConstraint.
-- See 'wafRegionalGeoMatchSetGeoMatchConstraint' for a more convenient
-- constructor.
data WAFRegionalGeoMatchSetGeoMatchConstraint =
  WAFRegionalGeoMatchSetGeoMatchConstraint
  { _wAFRegionalGeoMatchSetGeoMatchConstraintType :: Val Text
  , _wAFRegionalGeoMatchSetGeoMatchConstraintValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalGeoMatchSetGeoMatchConstraint where
  toJSON WAFRegionalGeoMatchSetGeoMatchConstraint{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _wAFRegionalGeoMatchSetGeoMatchConstraintType
    , (Just . ("Value",) . toJSON) _wAFRegionalGeoMatchSetGeoMatchConstraintValue
    ]

-- | Constructor for 'WAFRegionalGeoMatchSetGeoMatchConstraint' containing
-- required fields as arguments.
wafRegionalGeoMatchSetGeoMatchConstraint
  :: Val Text -- ^ 'wafrgmsgmcType'
  -> Val Text -- ^ 'wafrgmsgmcValue'
  -> WAFRegionalGeoMatchSetGeoMatchConstraint
wafRegionalGeoMatchSetGeoMatchConstraint typearg valuearg =
  WAFRegionalGeoMatchSetGeoMatchConstraint
  { _wAFRegionalGeoMatchSetGeoMatchConstraintType = typearg
  , _wAFRegionalGeoMatchSetGeoMatchConstraintValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html#cfn-wafregional-geomatchset-geomatchconstraint-type
wafrgmsgmcType :: Lens' WAFRegionalGeoMatchSetGeoMatchConstraint (Val Text)
wafrgmsgmcType = lens _wAFRegionalGeoMatchSetGeoMatchConstraintType (\s a -> s { _wAFRegionalGeoMatchSetGeoMatchConstraintType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html#cfn-wafregional-geomatchset-geomatchconstraint-value
wafrgmsgmcValue :: Lens' WAFRegionalGeoMatchSetGeoMatchConstraint (Val Text)
wafrgmsgmcValue = lens _wAFRegionalGeoMatchSetGeoMatchConstraintValue (\s a -> s { _wAFRegionalGeoMatchSetGeoMatchConstraintValue = a })

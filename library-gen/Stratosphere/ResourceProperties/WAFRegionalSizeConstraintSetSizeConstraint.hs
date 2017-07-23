{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html

module Stratosphere.ResourceProperties.WAFRegionalSizeConstraintSetSizeConstraint where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFRegionalSizeConstraintSetFieldToMatch

-- | Full data type definition for WAFRegionalSizeConstraintSetSizeConstraint.
-- See 'wafRegionalSizeConstraintSetSizeConstraint' for a more convenient
-- constructor.
data WAFRegionalSizeConstraintSetSizeConstraint =
  WAFRegionalSizeConstraintSetSizeConstraint
  { _wAFRegionalSizeConstraintSetSizeConstraintComparisonOperator :: Val Text
  , _wAFRegionalSizeConstraintSetSizeConstraintFieldToMatch :: WAFRegionalSizeConstraintSetFieldToMatch
  , _wAFRegionalSizeConstraintSetSizeConstraintSize :: Val Integer
  , _wAFRegionalSizeConstraintSetSizeConstraintTextTransformation :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalSizeConstraintSetSizeConstraint where
  toJSON WAFRegionalSizeConstraintSetSizeConstraint{..} =
    object $
    catMaybes
    [ (Just . ("ComparisonOperator",) . toJSON) _wAFRegionalSizeConstraintSetSizeConstraintComparisonOperator
    , (Just . ("FieldToMatch",) . toJSON) _wAFRegionalSizeConstraintSetSizeConstraintFieldToMatch
    , (Just . ("Size",) . toJSON . fmap Integer') _wAFRegionalSizeConstraintSetSizeConstraintSize
    , (Just . ("TextTransformation",) . toJSON) _wAFRegionalSizeConstraintSetSizeConstraintTextTransformation
    ]

instance FromJSON WAFRegionalSizeConstraintSetSizeConstraint where
  parseJSON (Object obj) =
    WAFRegionalSizeConstraintSetSizeConstraint <$>
      (obj .: "ComparisonOperator") <*>
      (obj .: "FieldToMatch") <*>
      fmap (fmap unInteger') (obj .: "Size") <*>
      (obj .: "TextTransformation")
  parseJSON _ = mempty

-- | Constructor for 'WAFRegionalSizeConstraintSetSizeConstraint' containing
-- required fields as arguments.
wafRegionalSizeConstraintSetSizeConstraint
  :: Val Text -- ^ 'wafrscsscComparisonOperator'
  -> WAFRegionalSizeConstraintSetFieldToMatch -- ^ 'wafrscsscFieldToMatch'
  -> Val Integer -- ^ 'wafrscsscSize'
  -> Val Text -- ^ 'wafrscsscTextTransformation'
  -> WAFRegionalSizeConstraintSetSizeConstraint
wafRegionalSizeConstraintSetSizeConstraint comparisonOperatorarg fieldToMatcharg sizearg textTransformationarg =
  WAFRegionalSizeConstraintSetSizeConstraint
  { _wAFRegionalSizeConstraintSetSizeConstraintComparisonOperator = comparisonOperatorarg
  , _wAFRegionalSizeConstraintSetSizeConstraintFieldToMatch = fieldToMatcharg
  , _wAFRegionalSizeConstraintSetSizeConstraintSize = sizearg
  , _wAFRegionalSizeConstraintSetSizeConstraintTextTransformation = textTransformationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-comparisonoperator
wafrscsscComparisonOperator :: Lens' WAFRegionalSizeConstraintSetSizeConstraint (Val Text)
wafrscsscComparisonOperator = lens _wAFRegionalSizeConstraintSetSizeConstraintComparisonOperator (\s a -> s { _wAFRegionalSizeConstraintSetSizeConstraintComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-fieldtomatch
wafrscsscFieldToMatch :: Lens' WAFRegionalSizeConstraintSetSizeConstraint WAFRegionalSizeConstraintSetFieldToMatch
wafrscsscFieldToMatch = lens _wAFRegionalSizeConstraintSetSizeConstraintFieldToMatch (\s a -> s { _wAFRegionalSizeConstraintSetSizeConstraintFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-size
wafrscsscSize :: Lens' WAFRegionalSizeConstraintSetSizeConstraint (Val Integer)
wafrscsscSize = lens _wAFRegionalSizeConstraintSetSizeConstraintSize (\s a -> s { _wAFRegionalSizeConstraintSetSizeConstraintSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-texttransformation
wafrscsscTextTransformation :: Lens' WAFRegionalSizeConstraintSetSizeConstraint (Val Text)
wafrscsscTextTransformation = lens _wAFRegionalSizeConstraintSetSizeConstraintTextTransformation (\s a -> s { _wAFRegionalSizeConstraintSetSizeConstraintTextTransformation = a })

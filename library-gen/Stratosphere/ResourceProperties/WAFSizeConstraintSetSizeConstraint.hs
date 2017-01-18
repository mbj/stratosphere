{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html

module Stratosphere.ResourceProperties.WAFSizeConstraintSetSizeConstraint where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFSizeConstraintSetFieldToMatch

-- | Full data type definition for WAFSizeConstraintSetSizeConstraint. See
-- | 'wafSizeConstraintSetSizeConstraint' for a more convenient constructor.
data WAFSizeConstraintSetSizeConstraint =
  WAFSizeConstraintSetSizeConstraint
  { _wAFSizeConstraintSetSizeConstraintComparisonOperator :: Val Text
  , _wAFSizeConstraintSetSizeConstraintFieldToMatch :: WAFSizeConstraintSetFieldToMatch
  , _wAFSizeConstraintSetSizeConstraintSize :: Val Integer'
  , _wAFSizeConstraintSetSizeConstraintTextTransformation :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON WAFSizeConstraintSetSizeConstraint where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON WAFSizeConstraintSetSizeConstraint where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'WAFSizeConstraintSetSizeConstraint' containing required
-- | fields as arguments.
wafSizeConstraintSetSizeConstraint
  :: Val Text -- ^ 'wafscsscComparisonOperator'
  -> WAFSizeConstraintSetFieldToMatch -- ^ 'wafscsscFieldToMatch'
  -> Val Integer' -- ^ 'wafscsscSize'
  -> Val Text -- ^ 'wafscsscTextTransformation'
  -> WAFSizeConstraintSetSizeConstraint
wafSizeConstraintSetSizeConstraint comparisonOperatorarg fieldToMatcharg sizearg textTransformationarg =
  WAFSizeConstraintSetSizeConstraint
  { _wAFSizeConstraintSetSizeConstraintComparisonOperator = comparisonOperatorarg
  , _wAFSizeConstraintSetSizeConstraintFieldToMatch = fieldToMatcharg
  , _wAFSizeConstraintSetSizeConstraintSize = sizearg
  , _wAFSizeConstraintSetSizeConstraintTextTransformation = textTransformationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-comparisonoperator
wafscsscComparisonOperator :: Lens' WAFSizeConstraintSetSizeConstraint (Val Text)
wafscsscComparisonOperator = lens _wAFSizeConstraintSetSizeConstraintComparisonOperator (\s a -> s { _wAFSizeConstraintSetSizeConstraintComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch
wafscsscFieldToMatch :: Lens' WAFSizeConstraintSetSizeConstraint WAFSizeConstraintSetFieldToMatch
wafscsscFieldToMatch = lens _wAFSizeConstraintSetSizeConstraintFieldToMatch (\s a -> s { _wAFSizeConstraintSetSizeConstraintFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-size
wafscsscSize :: Lens' WAFSizeConstraintSetSizeConstraint (Val Integer')
wafscsscSize = lens _wAFSizeConstraintSetSizeConstraintSize (\s a -> s { _wAFSizeConstraintSetSizeConstraintSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-texttransformation
wafscsscTextTransformation :: Lens' WAFSizeConstraintSetSizeConstraint (Val Text)
wafscsscTextTransformation = lens _wAFSizeConstraintSetSizeConstraintTextTransformation (\s a -> s { _wAFSizeConstraintSetSizeConstraintTextTransformation = a })

module Stratosphere.WAFRegional.SizeConstraintSet.SizeConstraintProperty (
        module Exports, SizeConstraintProperty(..),
        mkSizeConstraintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.SizeConstraintSet.FieldToMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SizeConstraintProperty
  = SizeConstraintProperty {comparisonOperator :: (Value Prelude.Text),
                            fieldToMatch :: FieldToMatchProperty,
                            size :: (Value Prelude.Integer),
                            textTransformation :: (Value Prelude.Text)}
mkSizeConstraintProperty ::
  Value Prelude.Text
  -> FieldToMatchProperty
     -> Value Prelude.Integer
        -> Value Prelude.Text -> SizeConstraintProperty
mkSizeConstraintProperty
  comparisonOperator
  fieldToMatch
  size
  textTransformation
  = SizeConstraintProperty
      {comparisonOperator = comparisonOperator,
       fieldToMatch = fieldToMatch, size = size,
       textTransformation = textTransformation}
instance ToResourceProperties SizeConstraintProperty where
  toResourceProperties SizeConstraintProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::SizeConstraintSet.SizeConstraint",
         properties = ["ComparisonOperator" JSON..= comparisonOperator,
                       "FieldToMatch" JSON..= fieldToMatch, "Size" JSON..= size,
                       "TextTransformation" JSON..= textTransformation]}
instance JSON.ToJSON SizeConstraintProperty where
  toJSON SizeConstraintProperty {..}
    = JSON.object
        ["ComparisonOperator" JSON..= comparisonOperator,
         "FieldToMatch" JSON..= fieldToMatch, "Size" JSON..= size,
         "TextTransformation" JSON..= textTransformation]
instance Property "ComparisonOperator" SizeConstraintProperty where
  type PropertyType "ComparisonOperator" SizeConstraintProperty = Value Prelude.Text
  set newValue SizeConstraintProperty {..}
    = SizeConstraintProperty {comparisonOperator = newValue, ..}
instance Property "FieldToMatch" SizeConstraintProperty where
  type PropertyType "FieldToMatch" SizeConstraintProperty = FieldToMatchProperty
  set newValue SizeConstraintProperty {..}
    = SizeConstraintProperty {fieldToMatch = newValue, ..}
instance Property "Size" SizeConstraintProperty where
  type PropertyType "Size" SizeConstraintProperty = Value Prelude.Integer
  set newValue SizeConstraintProperty {..}
    = SizeConstraintProperty {size = newValue, ..}
instance Property "TextTransformation" SizeConstraintProperty where
  type PropertyType "TextTransformation" SizeConstraintProperty = Value Prelude.Text
  set newValue SizeConstraintProperty {..}
    = SizeConstraintProperty {textTransformation = newValue, ..}
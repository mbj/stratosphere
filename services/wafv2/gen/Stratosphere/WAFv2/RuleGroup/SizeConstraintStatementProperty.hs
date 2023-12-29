module Stratosphere.WAFv2.RuleGroup.SizeConstraintStatementProperty (
        module Exports, SizeConstraintStatementProperty(..),
        mkSizeConstraintStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SizeConstraintStatementProperty
  = SizeConstraintStatementProperty {comparisonOperator :: (Value Prelude.Text),
                                     fieldToMatch :: FieldToMatchProperty,
                                     size :: (Value Prelude.Double),
                                     textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSizeConstraintStatementProperty ::
  Value Prelude.Text
  -> FieldToMatchProperty
     -> Value Prelude.Double
        -> [TextTransformationProperty] -> SizeConstraintStatementProperty
mkSizeConstraintStatementProperty
  comparisonOperator
  fieldToMatch
  size
  textTransformations
  = SizeConstraintStatementProperty
      {comparisonOperator = comparisonOperator,
       fieldToMatch = fieldToMatch, size = size,
       textTransformations = textTransformations}
instance ToResourceProperties SizeConstraintStatementProperty where
  toResourceProperties SizeConstraintStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.SizeConstraintStatement",
         supportsTags = Prelude.False,
         properties = ["ComparisonOperator" JSON..= comparisonOperator,
                       "FieldToMatch" JSON..= fieldToMatch, "Size" JSON..= size,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON SizeConstraintStatementProperty where
  toJSON SizeConstraintStatementProperty {..}
    = JSON.object
        ["ComparisonOperator" JSON..= comparisonOperator,
         "FieldToMatch" JSON..= fieldToMatch, "Size" JSON..= size,
         "TextTransformations" JSON..= textTransformations]
instance Property "ComparisonOperator" SizeConstraintStatementProperty where
  type PropertyType "ComparisonOperator" SizeConstraintStatementProperty = Value Prelude.Text
  set newValue SizeConstraintStatementProperty {..}
    = SizeConstraintStatementProperty
        {comparisonOperator = newValue, ..}
instance Property "FieldToMatch" SizeConstraintStatementProperty where
  type PropertyType "FieldToMatch" SizeConstraintStatementProperty = FieldToMatchProperty
  set newValue SizeConstraintStatementProperty {..}
    = SizeConstraintStatementProperty {fieldToMatch = newValue, ..}
instance Property "Size" SizeConstraintStatementProperty where
  type PropertyType "Size" SizeConstraintStatementProperty = Value Prelude.Double
  set newValue SizeConstraintStatementProperty {..}
    = SizeConstraintStatementProperty {size = newValue, ..}
instance Property "TextTransformations" SizeConstraintStatementProperty where
  type PropertyType "TextTransformations" SizeConstraintStatementProperty = [TextTransformationProperty]
  set newValue SizeConstraintStatementProperty {..}
    = SizeConstraintStatementProperty
        {textTransformations = newValue, ..}
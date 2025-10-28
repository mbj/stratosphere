module Stratosphere.WAF.SizeConstraintSet.SizeConstraintProperty (
        module Exports, SizeConstraintProperty(..),
        mkSizeConstraintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.SizeConstraintSet.FieldToMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SizeConstraintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html>
    SizeConstraintProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-comparisonoperator>
                            comparisonOperator :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch>
                            fieldToMatch :: FieldToMatchProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-size>
                            size :: (Value Prelude.Integer),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-texttransformation>
                            textTransformation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
       fieldToMatch = fieldToMatch, size = size,
       textTransformation = textTransformation}
instance ToResourceProperties SizeConstraintProperty where
  toResourceProperties SizeConstraintProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::SizeConstraintSet.SizeConstraint",
         supportsTags = Prelude.False,
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
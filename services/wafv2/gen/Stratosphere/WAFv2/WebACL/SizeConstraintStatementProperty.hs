module Stratosphere.WAFv2.WebACL.SizeConstraintStatementProperty (
        module Exports, SizeConstraintStatementProperty(..),
        mkSizeConstraintStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SizeConstraintStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html>
    SizeConstraintStatementProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-comparisonoperator>
                                     comparisonOperator :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-fieldtomatch>
                                     fieldToMatch :: FieldToMatchProperty,
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-size>
                                     size :: (Value Prelude.Double),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-texttransformations>
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
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
       fieldToMatch = fieldToMatch, size = size,
       textTransformations = textTransformations}
instance ToResourceProperties SizeConstraintStatementProperty where
  toResourceProperties SizeConstraintStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.SizeConstraintStatement",
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
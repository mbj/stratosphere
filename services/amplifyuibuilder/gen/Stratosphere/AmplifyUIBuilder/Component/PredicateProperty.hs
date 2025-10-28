module Stratosphere.AmplifyUIBuilder.Component.PredicateProperty (
        PredicateProperty(..), mkPredicateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredicateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-predicate.html>
    PredicateProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-predicate.html#cfn-amplifyuibuilder-component-predicate-and>
                       and :: (Prelude.Maybe [PredicateProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-predicate.html#cfn-amplifyuibuilder-component-predicate-field>
                       field :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-predicate.html#cfn-amplifyuibuilder-component-predicate-operand>
                       operand :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-predicate.html#cfn-amplifyuibuilder-component-predicate-operandtype>
                       operandType :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-predicate.html#cfn-amplifyuibuilder-component-predicate-operator>
                       operator :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-predicate.html#cfn-amplifyuibuilder-component-predicate-or>
                       or :: (Prelude.Maybe [PredicateProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredicateProperty :: PredicateProperty
mkPredicateProperty
  = PredicateProperty
      {haddock_workaround_ = (), and = Prelude.Nothing,
       field = Prelude.Nothing, operand = Prelude.Nothing,
       operandType = Prelude.Nothing, operator = Prelude.Nothing,
       or = Prelude.Nothing}
instance ToResourceProperties PredicateProperty where
  toResourceProperties PredicateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.Predicate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "And" Prelude.<$> and,
                            (JSON..=) "Field" Prelude.<$> field,
                            (JSON..=) "Operand" Prelude.<$> operand,
                            (JSON..=) "OperandType" Prelude.<$> operandType,
                            (JSON..=) "Operator" Prelude.<$> operator,
                            (JSON..=) "Or" Prelude.<$> or])}
instance JSON.ToJSON PredicateProperty where
  toJSON PredicateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "And" Prelude.<$> and,
               (JSON..=) "Field" Prelude.<$> field,
               (JSON..=) "Operand" Prelude.<$> operand,
               (JSON..=) "OperandType" Prelude.<$> operandType,
               (JSON..=) "Operator" Prelude.<$> operator,
               (JSON..=) "Or" Prelude.<$> or]))
instance Property "And" PredicateProperty where
  type PropertyType "And" PredicateProperty = [PredicateProperty]
  set newValue PredicateProperty {..}
    = PredicateProperty {and = Prelude.pure newValue, ..}
instance Property "Field" PredicateProperty where
  type PropertyType "Field" PredicateProperty = Value Prelude.Text
  set newValue PredicateProperty {..}
    = PredicateProperty {field = Prelude.pure newValue, ..}
instance Property "Operand" PredicateProperty where
  type PropertyType "Operand" PredicateProperty = Value Prelude.Text
  set newValue PredicateProperty {..}
    = PredicateProperty {operand = Prelude.pure newValue, ..}
instance Property "OperandType" PredicateProperty where
  type PropertyType "OperandType" PredicateProperty = Value Prelude.Text
  set newValue PredicateProperty {..}
    = PredicateProperty {operandType = Prelude.pure newValue, ..}
instance Property "Operator" PredicateProperty where
  type PropertyType "Operator" PredicateProperty = Value Prelude.Text
  set newValue PredicateProperty {..}
    = PredicateProperty {operator = Prelude.pure newValue, ..}
instance Property "Or" PredicateProperty where
  type PropertyType "Or" PredicateProperty = [PredicateProperty]
  set newValue PredicateProperty {..}
    = PredicateProperty {or = Prelude.pure newValue, ..}
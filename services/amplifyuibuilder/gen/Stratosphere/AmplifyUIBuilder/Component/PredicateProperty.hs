module Stratosphere.AmplifyUIBuilder.Component.PredicateProperty (
        PredicateProperty(..), mkPredicateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredicateProperty
  = PredicateProperty {and :: (Prelude.Maybe [PredicateProperty]),
                       field :: (Prelude.Maybe (Value Prelude.Text)),
                       operand :: (Prelude.Maybe (Value Prelude.Text)),
                       operator :: (Prelude.Maybe (Value Prelude.Text)),
                       or :: (Prelude.Maybe [PredicateProperty])}
mkPredicateProperty :: PredicateProperty
mkPredicateProperty
  = PredicateProperty
      {and = Prelude.Nothing, field = Prelude.Nothing,
       operand = Prelude.Nothing, operator = Prelude.Nothing,
       or = Prelude.Nothing}
instance ToResourceProperties PredicateProperty where
  toResourceProperties PredicateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.Predicate",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "And" Prelude.<$> and,
                            (JSON..=) "Field" Prelude.<$> field,
                            (JSON..=) "Operand" Prelude.<$> operand,
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
instance Property "Operator" PredicateProperty where
  type PropertyType "Operator" PredicateProperty = Value Prelude.Text
  set newValue PredicateProperty {..}
    = PredicateProperty {operator = Prelude.pure newValue, ..}
instance Property "Or" PredicateProperty where
  type PropertyType "Or" PredicateProperty = [PredicateProperty]
  set newValue PredicateProperty {..}
    = PredicateProperty {or = Prelude.pure newValue, ..}
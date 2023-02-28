module Stratosphere.GuardDuty.Filter.ConditionProperty (
        ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionProperty
  = ConditionProperty {eq :: (Prelude.Maybe (ValueList Prelude.Text)),
                       equals :: (Prelude.Maybe (ValueList Prelude.Text)),
                       greaterThan :: (Prelude.Maybe (Value Prelude.Integer)),
                       greaterThanOrEqual :: (Prelude.Maybe (Value Prelude.Integer)),
                       gt :: (Prelude.Maybe (Value Prelude.Integer)),
                       gte :: (Prelude.Maybe (Value Prelude.Integer)),
                       lessThan :: (Prelude.Maybe (Value Prelude.Integer)),
                       lessThanOrEqual :: (Prelude.Maybe (Value Prelude.Integer)),
                       lt :: (Prelude.Maybe (Value Prelude.Integer)),
                       lte :: (Prelude.Maybe (Value Prelude.Integer)),
                       neq :: (Prelude.Maybe (ValueList Prelude.Text)),
                       notEquals :: (Prelude.Maybe (ValueList Prelude.Text))}
mkConditionProperty :: ConditionProperty
mkConditionProperty
  = ConditionProperty
      {eq = Prelude.Nothing, equals = Prelude.Nothing,
       greaterThan = Prelude.Nothing,
       greaterThanOrEqual = Prelude.Nothing, gt = Prelude.Nothing,
       gte = Prelude.Nothing, lessThan = Prelude.Nothing,
       lessThanOrEqual = Prelude.Nothing, lt = Prelude.Nothing,
       lte = Prelude.Nothing, neq = Prelude.Nothing,
       notEquals = Prelude.Nothing}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Filter.Condition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Eq" Prelude.<$> eq,
                            (JSON..=) "Equals" Prelude.<$> equals,
                            (JSON..=) "GreaterThan" Prelude.<$> greaterThan,
                            (JSON..=) "GreaterThanOrEqual" Prelude.<$> greaterThanOrEqual,
                            (JSON..=) "Gt" Prelude.<$> gt, (JSON..=) "Gte" Prelude.<$> gte,
                            (JSON..=) "LessThan" Prelude.<$> lessThan,
                            (JSON..=) "LessThanOrEqual" Prelude.<$> lessThanOrEqual,
                            (JSON..=) "Lt" Prelude.<$> lt, (JSON..=) "Lte" Prelude.<$> lte,
                            (JSON..=) "Neq" Prelude.<$> neq,
                            (JSON..=) "NotEquals" Prelude.<$> notEquals])}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Eq" Prelude.<$> eq,
               (JSON..=) "Equals" Prelude.<$> equals,
               (JSON..=) "GreaterThan" Prelude.<$> greaterThan,
               (JSON..=) "GreaterThanOrEqual" Prelude.<$> greaterThanOrEqual,
               (JSON..=) "Gt" Prelude.<$> gt, (JSON..=) "Gte" Prelude.<$> gte,
               (JSON..=) "LessThan" Prelude.<$> lessThan,
               (JSON..=) "LessThanOrEqual" Prelude.<$> lessThanOrEqual,
               (JSON..=) "Lt" Prelude.<$> lt, (JSON..=) "Lte" Prelude.<$> lte,
               (JSON..=) "Neq" Prelude.<$> neq,
               (JSON..=) "NotEquals" Prelude.<$> notEquals]))
instance Property "Eq" ConditionProperty where
  type PropertyType "Eq" ConditionProperty = ValueList Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {eq = Prelude.pure newValue, ..}
instance Property "Equals" ConditionProperty where
  type PropertyType "Equals" ConditionProperty = ValueList Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {equals = Prelude.pure newValue, ..}
instance Property "GreaterThan" ConditionProperty where
  type PropertyType "GreaterThan" ConditionProperty = Value Prelude.Integer
  set newValue ConditionProperty {..}
    = ConditionProperty {greaterThan = Prelude.pure newValue, ..}
instance Property "GreaterThanOrEqual" ConditionProperty where
  type PropertyType "GreaterThanOrEqual" ConditionProperty = Value Prelude.Integer
  set newValue ConditionProperty {..}
    = ConditionProperty
        {greaterThanOrEqual = Prelude.pure newValue, ..}
instance Property "Gt" ConditionProperty where
  type PropertyType "Gt" ConditionProperty = Value Prelude.Integer
  set newValue ConditionProperty {..}
    = ConditionProperty {gt = Prelude.pure newValue, ..}
instance Property "Gte" ConditionProperty where
  type PropertyType "Gte" ConditionProperty = Value Prelude.Integer
  set newValue ConditionProperty {..}
    = ConditionProperty {gte = Prelude.pure newValue, ..}
instance Property "LessThan" ConditionProperty where
  type PropertyType "LessThan" ConditionProperty = Value Prelude.Integer
  set newValue ConditionProperty {..}
    = ConditionProperty {lessThan = Prelude.pure newValue, ..}
instance Property "LessThanOrEqual" ConditionProperty where
  type PropertyType "LessThanOrEqual" ConditionProperty = Value Prelude.Integer
  set newValue ConditionProperty {..}
    = ConditionProperty {lessThanOrEqual = Prelude.pure newValue, ..}
instance Property "Lt" ConditionProperty where
  type PropertyType "Lt" ConditionProperty = Value Prelude.Integer
  set newValue ConditionProperty {..}
    = ConditionProperty {lt = Prelude.pure newValue, ..}
instance Property "Lte" ConditionProperty where
  type PropertyType "Lte" ConditionProperty = Value Prelude.Integer
  set newValue ConditionProperty {..}
    = ConditionProperty {lte = Prelude.pure newValue, ..}
instance Property "Neq" ConditionProperty where
  type PropertyType "Neq" ConditionProperty = ValueList Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {neq = Prelude.pure newValue, ..}
instance Property "NotEquals" ConditionProperty where
  type PropertyType "NotEquals" ConditionProperty = ValueList Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {notEquals = Prelude.pure newValue, ..}
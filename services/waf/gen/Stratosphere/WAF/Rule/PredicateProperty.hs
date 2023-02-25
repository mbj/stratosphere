module Stratosphere.WAF.Rule.PredicateProperty (
        PredicateProperty(..), mkPredicateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredicateProperty
  = PredicateProperty {dataId :: (Value Prelude.Text),
                       negated :: (Value Prelude.Bool),
                       type' :: (Value Prelude.Text)}
mkPredicateProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> Value Prelude.Text -> PredicateProperty
mkPredicateProperty dataId negated type'
  = PredicateProperty
      {dataId = dataId, negated = negated, type' = type'}
instance ToResourceProperties PredicateProperty where
  toResourceProperties PredicateProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::Rule.Predicate",
         properties = ["DataId" JSON..= dataId, "Negated" JSON..= negated,
                       "Type" JSON..= type']}
instance JSON.ToJSON PredicateProperty where
  toJSON PredicateProperty {..}
    = JSON.object
        ["DataId" JSON..= dataId, "Negated" JSON..= negated,
         "Type" JSON..= type']
instance Property "DataId" PredicateProperty where
  type PropertyType "DataId" PredicateProperty = Value Prelude.Text
  set newValue PredicateProperty {..}
    = PredicateProperty {dataId = newValue, ..}
instance Property "Negated" PredicateProperty where
  type PropertyType "Negated" PredicateProperty = Value Prelude.Bool
  set newValue PredicateProperty {..}
    = PredicateProperty {negated = newValue, ..}
instance Property "Type" PredicateProperty where
  type PropertyType "Type" PredicateProperty = Value Prelude.Text
  set newValue PredicateProperty {..}
    = PredicateProperty {type' = newValue, ..}
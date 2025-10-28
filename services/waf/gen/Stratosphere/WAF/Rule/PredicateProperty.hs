module Stratosphere.WAF.Rule.PredicateProperty (
        PredicateProperty(..), mkPredicateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredicateProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html>
    PredicateProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-dataid>
                       dataId :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-negated>
                       negated :: (Value Prelude.Bool),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-type>
                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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
         supportsTags = Prelude.False,
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
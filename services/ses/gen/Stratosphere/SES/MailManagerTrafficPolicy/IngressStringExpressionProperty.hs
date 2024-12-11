module Stratosphere.SES.MailManagerTrafficPolicy.IngressStringExpressionProperty (
        module Exports, IngressStringExpressionProperty(..),
        mkIngressStringExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressStringToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressStringExpressionProperty
  = IngressStringExpressionProperty {evaluate :: IngressStringToEvaluateProperty,
                                     operator :: (Value Prelude.Text),
                                     values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressStringExpressionProperty ::
  IngressStringToEvaluateProperty
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> IngressStringExpressionProperty
mkIngressStringExpressionProperty evaluate operator values
  = IngressStringExpressionProperty
      {evaluate = evaluate, operator = operator, values = values}
instance ToResourceProperties IngressStringExpressionProperty where
  toResourceProperties IngressStringExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressStringExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Values" JSON..= values]}
instance JSON.ToJSON IngressStringExpressionProperty where
  toJSON IngressStringExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Values" JSON..= values]
instance Property "Evaluate" IngressStringExpressionProperty where
  type PropertyType "Evaluate" IngressStringExpressionProperty = IngressStringToEvaluateProperty
  set newValue IngressStringExpressionProperty {..}
    = IngressStringExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" IngressStringExpressionProperty where
  type PropertyType "Operator" IngressStringExpressionProperty = Value Prelude.Text
  set newValue IngressStringExpressionProperty {..}
    = IngressStringExpressionProperty {operator = newValue, ..}
instance Property "Values" IngressStringExpressionProperty where
  type PropertyType "Values" IngressStringExpressionProperty = ValueList Prelude.Text
  set newValue IngressStringExpressionProperty {..}
    = IngressStringExpressionProperty {values = newValue, ..}
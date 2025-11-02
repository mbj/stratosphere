module Stratosphere.SES.MailManagerTrafficPolicy.IngressBooleanExpressionProperty (
        module Exports, IngressBooleanExpressionProperty(..),
        mkIngressBooleanExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressBooleanToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressBooleanExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleanexpression.html>
    IngressBooleanExpressionProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleanexpression.html#cfn-ses-mailmanagertrafficpolicy-ingressbooleanexpression-evaluate>
                                      evaluate :: IngressBooleanToEvaluateProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleanexpression.html#cfn-ses-mailmanagertrafficpolicy-ingressbooleanexpression-operator>
                                      operator :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressBooleanExpressionProperty ::
  IngressBooleanToEvaluateProperty
  -> Value Prelude.Text -> IngressBooleanExpressionProperty
mkIngressBooleanExpressionProperty evaluate operator
  = IngressBooleanExpressionProperty
      {haddock_workaround_ = (), evaluate = evaluate,
       operator = operator}
instance ToResourceProperties IngressBooleanExpressionProperty where
  toResourceProperties IngressBooleanExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressBooleanExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator]}
instance JSON.ToJSON IngressBooleanExpressionProperty where
  toJSON IngressBooleanExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator]
instance Property "Evaluate" IngressBooleanExpressionProperty where
  type PropertyType "Evaluate" IngressBooleanExpressionProperty = IngressBooleanToEvaluateProperty
  set newValue IngressBooleanExpressionProperty {..}
    = IngressBooleanExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" IngressBooleanExpressionProperty where
  type PropertyType "Operator" IngressBooleanExpressionProperty = Value Prelude.Text
  set newValue IngressBooleanExpressionProperty {..}
    = IngressBooleanExpressionProperty {operator = newValue, ..}
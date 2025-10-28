module Stratosphere.SES.MailManagerTrafficPolicy.IngressIpv4ExpressionProperty (
        module Exports, IngressIpv4ExpressionProperty(..),
        mkIngressIpv4ExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressIpToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressIpv4ExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv4expression.html>
    IngressIpv4ExpressionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv4expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv4expression-evaluate>
                                   evaluate :: IngressIpToEvaluateProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv4expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv4expression-operator>
                                   operator :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv4expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv4expression-values>
                                   values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressIpv4ExpressionProperty ::
  IngressIpToEvaluateProperty
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> IngressIpv4ExpressionProperty
mkIngressIpv4ExpressionProperty evaluate operator values
  = IngressIpv4ExpressionProperty
      {haddock_workaround_ = (), evaluate = evaluate,
       operator = operator, values = values}
instance ToResourceProperties IngressIpv4ExpressionProperty where
  toResourceProperties IngressIpv4ExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressIpv4Expression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Values" JSON..= values]}
instance JSON.ToJSON IngressIpv4ExpressionProperty where
  toJSON IngressIpv4ExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Values" JSON..= values]
instance Property "Evaluate" IngressIpv4ExpressionProperty where
  type PropertyType "Evaluate" IngressIpv4ExpressionProperty = IngressIpToEvaluateProperty
  set newValue IngressIpv4ExpressionProperty {..}
    = IngressIpv4ExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" IngressIpv4ExpressionProperty where
  type PropertyType "Operator" IngressIpv4ExpressionProperty = Value Prelude.Text
  set newValue IngressIpv4ExpressionProperty {..}
    = IngressIpv4ExpressionProperty {operator = newValue, ..}
instance Property "Values" IngressIpv4ExpressionProperty where
  type PropertyType "Values" IngressIpv4ExpressionProperty = ValueList Prelude.Text
  set newValue IngressIpv4ExpressionProperty {..}
    = IngressIpv4ExpressionProperty {values = newValue, ..}
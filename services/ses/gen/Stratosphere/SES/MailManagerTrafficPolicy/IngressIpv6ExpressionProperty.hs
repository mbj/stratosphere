module Stratosphere.SES.MailManagerTrafficPolicy.IngressIpv6ExpressionProperty (
        module Exports, IngressIpv6ExpressionProperty(..),
        mkIngressIpv6ExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressIpv6ToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressIpv6ExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6expression.html>
    IngressIpv6ExpressionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv6expression-evaluate>
                                   evaluate :: IngressIpv6ToEvaluateProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv6expression-operator>
                                   operator :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv6expression-values>
                                   values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressIpv6ExpressionProperty ::
  IngressIpv6ToEvaluateProperty
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> IngressIpv6ExpressionProperty
mkIngressIpv6ExpressionProperty evaluate operator values
  = IngressIpv6ExpressionProperty
      {haddock_workaround_ = (), evaluate = evaluate,
       operator = operator, values = values}
instance ToResourceProperties IngressIpv6ExpressionProperty where
  toResourceProperties IngressIpv6ExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressIpv6Expression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Values" JSON..= values]}
instance JSON.ToJSON IngressIpv6ExpressionProperty where
  toJSON IngressIpv6ExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Values" JSON..= values]
instance Property "Evaluate" IngressIpv6ExpressionProperty where
  type PropertyType "Evaluate" IngressIpv6ExpressionProperty = IngressIpv6ToEvaluateProperty
  set newValue IngressIpv6ExpressionProperty {..}
    = IngressIpv6ExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" IngressIpv6ExpressionProperty where
  type PropertyType "Operator" IngressIpv6ExpressionProperty = Value Prelude.Text
  set newValue IngressIpv6ExpressionProperty {..}
    = IngressIpv6ExpressionProperty {operator = newValue, ..}
instance Property "Values" IngressIpv6ExpressionProperty where
  type PropertyType "Values" IngressIpv6ExpressionProperty = ValueList Prelude.Text
  set newValue IngressIpv6ExpressionProperty {..}
    = IngressIpv6ExpressionProperty {values = newValue, ..}
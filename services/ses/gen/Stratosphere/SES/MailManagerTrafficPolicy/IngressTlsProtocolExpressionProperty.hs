module Stratosphere.SES.MailManagerTrafficPolicy.IngressTlsProtocolExpressionProperty (
        module Exports, IngressTlsProtocolExpressionProperty(..),
        mkIngressTlsProtocolExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressTlsProtocolToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressTlsProtocolExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingresstlsprotocolexpression.html>
    IngressTlsProtocolExpressionProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingresstlsprotocolexpression.html#cfn-ses-mailmanagertrafficpolicy-ingresstlsprotocolexpression-evaluate>
                                          evaluate :: IngressTlsProtocolToEvaluateProperty,
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingresstlsprotocolexpression.html#cfn-ses-mailmanagertrafficpolicy-ingresstlsprotocolexpression-operator>
                                          operator :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingresstlsprotocolexpression.html#cfn-ses-mailmanagertrafficpolicy-ingresstlsprotocolexpression-value>
                                          value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressTlsProtocolExpressionProperty ::
  IngressTlsProtocolToEvaluateProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> IngressTlsProtocolExpressionProperty
mkIngressTlsProtocolExpressionProperty evaluate operator value
  = IngressTlsProtocolExpressionProperty
      {haddock_workaround_ = (), evaluate = evaluate,
       operator = operator, value = value}
instance ToResourceProperties IngressTlsProtocolExpressionProperty where
  toResourceProperties IngressTlsProtocolExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressTlsProtocolExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Value" JSON..= value]}
instance JSON.ToJSON IngressTlsProtocolExpressionProperty where
  toJSON IngressTlsProtocolExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Value" JSON..= value]
instance Property "Evaluate" IngressTlsProtocolExpressionProperty where
  type PropertyType "Evaluate" IngressTlsProtocolExpressionProperty = IngressTlsProtocolToEvaluateProperty
  set newValue IngressTlsProtocolExpressionProperty {..}
    = IngressTlsProtocolExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" IngressTlsProtocolExpressionProperty where
  type PropertyType "Operator" IngressTlsProtocolExpressionProperty = Value Prelude.Text
  set newValue IngressTlsProtocolExpressionProperty {..}
    = IngressTlsProtocolExpressionProperty {operator = newValue, ..}
instance Property "Value" IngressTlsProtocolExpressionProperty where
  type PropertyType "Value" IngressTlsProtocolExpressionProperty = Value Prelude.Text
  set newValue IngressTlsProtocolExpressionProperty {..}
    = IngressTlsProtocolExpressionProperty {value = newValue, ..}
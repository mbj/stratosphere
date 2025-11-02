module Stratosphere.SES.MailManagerTrafficPolicy.IngressTlsProtocolToEvaluateProperty (
        IngressTlsProtocolToEvaluateProperty(..),
        mkIngressTlsProtocolToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressTlsProtocolToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingresstlsprotocoltoevaluate.html>
    IngressTlsProtocolToEvaluateProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingresstlsprotocoltoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingresstlsprotocoltoevaluate-attribute>
                                          attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressTlsProtocolToEvaluateProperty ::
  Value Prelude.Text -> IngressTlsProtocolToEvaluateProperty
mkIngressTlsProtocolToEvaluateProperty attribute
  = IngressTlsProtocolToEvaluateProperty
      {haddock_workaround_ = (), attribute = attribute}
instance ToResourceProperties IngressTlsProtocolToEvaluateProperty where
  toResourceProperties IngressTlsProtocolToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressTlsProtocolToEvaluate",
         supportsTags = Prelude.False,
         properties = ["Attribute" JSON..= attribute]}
instance JSON.ToJSON IngressTlsProtocolToEvaluateProperty where
  toJSON IngressTlsProtocolToEvaluateProperty {..}
    = JSON.object ["Attribute" JSON..= attribute]
instance Property "Attribute" IngressTlsProtocolToEvaluateProperty where
  type PropertyType "Attribute" IngressTlsProtocolToEvaluateProperty = Value Prelude.Text
  set newValue IngressTlsProtocolToEvaluateProperty {..}
    = IngressTlsProtocolToEvaluateProperty {attribute = newValue, ..}
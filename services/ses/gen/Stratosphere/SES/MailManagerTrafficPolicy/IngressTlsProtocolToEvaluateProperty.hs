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
  = IngressTlsProtocolToEvaluateProperty {attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressTlsProtocolToEvaluateProperty ::
  Value Prelude.Text -> IngressTlsProtocolToEvaluateProperty
mkIngressTlsProtocolToEvaluateProperty attribute
  = IngressTlsProtocolToEvaluateProperty {attribute = attribute}
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
  set newValue IngressTlsProtocolToEvaluateProperty {}
    = IngressTlsProtocolToEvaluateProperty {attribute = newValue, ..}
module Stratosphere.SES.MailManagerTrafficPolicy.IngressIpToEvaluateProperty (
        IngressIpToEvaluateProperty(..), mkIngressIpToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressIpToEvaluateProperty
  = IngressIpToEvaluateProperty {attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressIpToEvaluateProperty ::
  Value Prelude.Text -> IngressIpToEvaluateProperty
mkIngressIpToEvaluateProperty attribute
  = IngressIpToEvaluateProperty {attribute = attribute}
instance ToResourceProperties IngressIpToEvaluateProperty where
  toResourceProperties IngressIpToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressIpToEvaluate",
         supportsTags = Prelude.False,
         properties = ["Attribute" JSON..= attribute]}
instance JSON.ToJSON IngressIpToEvaluateProperty where
  toJSON IngressIpToEvaluateProperty {..}
    = JSON.object ["Attribute" JSON..= attribute]
instance Property "Attribute" IngressIpToEvaluateProperty where
  type PropertyType "Attribute" IngressIpToEvaluateProperty = Value Prelude.Text
  set newValue IngressIpToEvaluateProperty {}
    = IngressIpToEvaluateProperty {attribute = newValue, ..}
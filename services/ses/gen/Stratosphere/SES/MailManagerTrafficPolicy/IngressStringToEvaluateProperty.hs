module Stratosphere.SES.MailManagerTrafficPolicy.IngressStringToEvaluateProperty (
        IngressStringToEvaluateProperty(..),
        mkIngressStringToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressStringToEvaluateProperty
  = IngressStringToEvaluateProperty {attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressStringToEvaluateProperty ::
  Value Prelude.Text -> IngressStringToEvaluateProperty
mkIngressStringToEvaluateProperty attribute
  = IngressStringToEvaluateProperty {attribute = attribute}
instance ToResourceProperties IngressStringToEvaluateProperty where
  toResourceProperties IngressStringToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressStringToEvaluate",
         supportsTags = Prelude.False,
         properties = ["Attribute" JSON..= attribute]}
instance JSON.ToJSON IngressStringToEvaluateProperty where
  toJSON IngressStringToEvaluateProperty {..}
    = JSON.object ["Attribute" JSON..= attribute]
instance Property "Attribute" IngressStringToEvaluateProperty where
  type PropertyType "Attribute" IngressStringToEvaluateProperty = Value Prelude.Text
  set newValue IngressStringToEvaluateProperty {}
    = IngressStringToEvaluateProperty {attribute = newValue, ..}
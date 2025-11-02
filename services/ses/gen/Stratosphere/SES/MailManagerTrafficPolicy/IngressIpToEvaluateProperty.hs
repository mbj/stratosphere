module Stratosphere.SES.MailManagerTrafficPolicy.IngressIpToEvaluateProperty (
        IngressIpToEvaluateProperty(..), mkIngressIpToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressIpToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressiptoevaluate.html>
    IngressIpToEvaluateProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressiptoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressiptoevaluate-attribute>
                                 attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressIpToEvaluateProperty ::
  Value Prelude.Text -> IngressIpToEvaluateProperty
mkIngressIpToEvaluateProperty attribute
  = IngressIpToEvaluateProperty
      {haddock_workaround_ = (), attribute = attribute}
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
  set newValue IngressIpToEvaluateProperty {..}
    = IngressIpToEvaluateProperty {attribute = newValue, ..}
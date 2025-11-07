module Stratosphere.SES.MailManagerTrafficPolicy.IngressIpv6ToEvaluateProperty (
        IngressIpv6ToEvaluateProperty(..), mkIngressIpv6ToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressIpv6ToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6toevaluate.html>
    IngressIpv6ToEvaluateProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6toevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressipv6toevaluate-attribute>
                                   attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressIpv6ToEvaluateProperty ::
  Value Prelude.Text -> IngressIpv6ToEvaluateProperty
mkIngressIpv6ToEvaluateProperty attribute
  = IngressIpv6ToEvaluateProperty
      {haddock_workaround_ = (), attribute = attribute}
instance ToResourceProperties IngressIpv6ToEvaluateProperty where
  toResourceProperties IngressIpv6ToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressIpv6ToEvaluate",
         supportsTags = Prelude.False,
         properties = ["Attribute" JSON..= attribute]}
instance JSON.ToJSON IngressIpv6ToEvaluateProperty where
  toJSON IngressIpv6ToEvaluateProperty {..}
    = JSON.object ["Attribute" JSON..= attribute]
instance Property "Attribute" IngressIpv6ToEvaluateProperty where
  type PropertyType "Attribute" IngressIpv6ToEvaluateProperty = Value Prelude.Text
  set newValue IngressIpv6ToEvaluateProperty {..}
    = IngressIpv6ToEvaluateProperty {attribute = newValue, ..}
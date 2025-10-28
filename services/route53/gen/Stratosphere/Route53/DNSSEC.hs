module Stratosphere.Route53.DNSSEC (
        DNSSEC(..), mkDNSSEC
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DNSSEC
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-dnssec.html>
    DNSSEC {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-dnssec.html#cfn-route53-dnssec-hostedzoneid>
            hostedZoneId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDNSSEC :: Value Prelude.Text -> DNSSEC
mkDNSSEC hostedZoneId
  = DNSSEC {haddock_workaround_ = (), hostedZoneId = hostedZoneId}
instance ToResourceProperties DNSSEC where
  toResourceProperties DNSSEC {..}
    = ResourceProperties
        {awsType = "AWS::Route53::DNSSEC", supportsTags = Prelude.False,
         properties = ["HostedZoneId" JSON..= hostedZoneId]}
instance JSON.ToJSON DNSSEC where
  toJSON DNSSEC {..}
    = JSON.object ["HostedZoneId" JSON..= hostedZoneId]
instance Property "HostedZoneId" DNSSEC where
  type PropertyType "HostedZoneId" DNSSEC = Value Prelude.Text
  set newValue DNSSEC {..} = DNSSEC {hostedZoneId = newValue, ..}
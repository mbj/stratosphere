module Stratosphere.Route53.HostedZone.HostedZoneConfigProperty (
        HostedZoneConfigProperty(..), mkHostedZoneConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostedZoneConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html>
    HostedZoneConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html#cfn-route53-hostedzone-hostedzoneconfig-comment>
                              comment :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostedZoneConfigProperty :: HostedZoneConfigProperty
mkHostedZoneConfigProperty
  = HostedZoneConfigProperty
      {haddock_workaround_ = (), comment = Prelude.Nothing}
instance ToResourceProperties HostedZoneConfigProperty where
  toResourceProperties HostedZoneConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HostedZone.HostedZoneConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment])}
instance JSON.ToJSON HostedZoneConfigProperty where
  toJSON HostedZoneConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment]))
instance Property "Comment" HostedZoneConfigProperty where
  type PropertyType "Comment" HostedZoneConfigProperty = Value Prelude.Text
  set newValue HostedZoneConfigProperty {..}
    = HostedZoneConfigProperty {comment = Prelude.pure newValue, ..}
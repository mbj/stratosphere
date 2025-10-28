module Stratosphere.NetworkFirewall.TLSInspectionConfiguration.ServerCertificateProperty (
        ServerCertificateProperty(..), mkServerCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerCertificateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-servercertificate.html>
    ServerCertificateProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-servercertificate.html#cfn-networkfirewall-tlsinspectionconfiguration-servercertificate-resourcearn>
                               resourceArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerCertificateProperty :: ServerCertificateProperty
mkServerCertificateProperty
  = ServerCertificateProperty
      {haddock_workaround_ = (), resourceArn = Prelude.Nothing}
instance ToResourceProperties ServerCertificateProperty where
  toResourceProperties ServerCertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::TLSInspectionConfiguration.ServerCertificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceArn" Prelude.<$> resourceArn])}
instance JSON.ToJSON ServerCertificateProperty where
  toJSON ServerCertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceArn" Prelude.<$> resourceArn]))
instance Property "ResourceArn" ServerCertificateProperty where
  type PropertyType "ResourceArn" ServerCertificateProperty = Value Prelude.Text
  set newValue ServerCertificateProperty {..}
    = ServerCertificateProperty
        {resourceArn = Prelude.pure newValue, ..}
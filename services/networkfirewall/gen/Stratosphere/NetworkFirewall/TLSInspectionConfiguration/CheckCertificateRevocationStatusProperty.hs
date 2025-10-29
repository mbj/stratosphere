module Stratosphere.NetworkFirewall.TLSInspectionConfiguration.CheckCertificateRevocationStatusProperty (
        CheckCertificateRevocationStatusProperty(..),
        mkCheckCertificateRevocationStatusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CheckCertificateRevocationStatusProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-checkcertificaterevocationstatus.html>
    CheckCertificateRevocationStatusProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-checkcertificaterevocationstatus.html#cfn-networkfirewall-tlsinspectionconfiguration-checkcertificaterevocationstatus-revokedstatusaction>
                                              revokedStatusAction :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-checkcertificaterevocationstatus.html#cfn-networkfirewall-tlsinspectionconfiguration-checkcertificaterevocationstatus-unknownstatusaction>
                                              unknownStatusAction :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCheckCertificateRevocationStatusProperty ::
  CheckCertificateRevocationStatusProperty
mkCheckCertificateRevocationStatusProperty
  = CheckCertificateRevocationStatusProperty
      {revokedStatusAction = Prelude.Nothing,
       unknownStatusAction = Prelude.Nothing}
instance ToResourceProperties CheckCertificateRevocationStatusProperty where
  toResourceProperties CheckCertificateRevocationStatusProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::TLSInspectionConfiguration.CheckCertificateRevocationStatus",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RevokedStatusAction" Prelude.<$> revokedStatusAction,
                            (JSON..=) "UnknownStatusAction" Prelude.<$> unknownStatusAction])}
instance JSON.ToJSON CheckCertificateRevocationStatusProperty where
  toJSON CheckCertificateRevocationStatusProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RevokedStatusAction" Prelude.<$> revokedStatusAction,
               (JSON..=) "UnknownStatusAction" Prelude.<$> unknownStatusAction]))
instance Property "RevokedStatusAction" CheckCertificateRevocationStatusProperty where
  type PropertyType "RevokedStatusAction" CheckCertificateRevocationStatusProperty = Value Prelude.Text
  set newValue CheckCertificateRevocationStatusProperty {..}
    = CheckCertificateRevocationStatusProperty
        {revokedStatusAction = Prelude.pure newValue, ..}
instance Property "UnknownStatusAction" CheckCertificateRevocationStatusProperty where
  type PropertyType "UnknownStatusAction" CheckCertificateRevocationStatusProperty = Value Prelude.Text
  set newValue CheckCertificateRevocationStatusProperty {..}
    = CheckCertificateRevocationStatusProperty
        {unknownStatusAction = Prelude.pure newValue, ..}
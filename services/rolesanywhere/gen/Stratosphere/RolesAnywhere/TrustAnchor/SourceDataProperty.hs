module Stratosphere.RolesAnywhere.TrustAnchor.SourceDataProperty (
        SourceDataProperty(..), mkSourceDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-trustanchor-sourcedata.html>
    SourceDataProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-trustanchor-sourcedata.html#cfn-rolesanywhere-trustanchor-sourcedata-acmpcaarn>
                        acmPcaArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-trustanchor-sourcedata.html#cfn-rolesanywhere-trustanchor-sourcedata-x509certificatedata>
                        x509CertificateData :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceDataProperty :: SourceDataProperty
mkSourceDataProperty
  = SourceDataProperty
      {haddock_workaround_ = (), acmPcaArn = Prelude.Nothing,
       x509CertificateData = Prelude.Nothing}
instance ToResourceProperties SourceDataProperty where
  toResourceProperties SourceDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::TrustAnchor.SourceData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcmPcaArn" Prelude.<$> acmPcaArn,
                            (JSON..=) "X509CertificateData" Prelude.<$> x509CertificateData])}
instance JSON.ToJSON SourceDataProperty where
  toJSON SourceDataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcmPcaArn" Prelude.<$> acmPcaArn,
               (JSON..=) "X509CertificateData" Prelude.<$> x509CertificateData]))
instance Property "AcmPcaArn" SourceDataProperty where
  type PropertyType "AcmPcaArn" SourceDataProperty = Value Prelude.Text
  set newValue SourceDataProperty {..}
    = SourceDataProperty {acmPcaArn = Prelude.pure newValue, ..}
instance Property "X509CertificateData" SourceDataProperty where
  type PropertyType "X509CertificateData" SourceDataProperty = Value Prelude.Text
  set newValue SourceDataProperty {..}
    = SourceDataProperty
        {x509CertificateData = Prelude.pure newValue, ..}
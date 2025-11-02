module Stratosphere.AppStream.DirectoryConfig.CertificateBasedAuthPropertiesProperty (
        CertificateBasedAuthPropertiesProperty(..),
        mkCertificateBasedAuthPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateBasedAuthPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-certificatebasedauthproperties.html>
    CertificateBasedAuthPropertiesProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-certificatebasedauthproperties.html#cfn-appstream-directoryconfig-certificatebasedauthproperties-certificateauthorityarn>
                                            certificateAuthorityArn :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-certificatebasedauthproperties.html#cfn-appstream-directoryconfig-certificatebasedauthproperties-status>
                                            status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateBasedAuthPropertiesProperty ::
  CertificateBasedAuthPropertiesProperty
mkCertificateBasedAuthPropertiesProperty
  = CertificateBasedAuthPropertiesProperty
      {haddock_workaround_ = (),
       certificateAuthorityArn = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties CertificateBasedAuthPropertiesProperty where
  toResourceProperties CertificateBasedAuthPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::DirectoryConfig.CertificateBasedAuthProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateAuthorityArn"
                              Prelude.<$> certificateAuthorityArn,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON CertificateBasedAuthPropertiesProperty where
  toJSON CertificateBasedAuthPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateAuthorityArn"
                 Prelude.<$> certificateAuthorityArn,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "CertificateAuthorityArn" CertificateBasedAuthPropertiesProperty where
  type PropertyType "CertificateAuthorityArn" CertificateBasedAuthPropertiesProperty = Value Prelude.Text
  set newValue CertificateBasedAuthPropertiesProperty {..}
    = CertificateBasedAuthPropertiesProperty
        {certificateAuthorityArn = Prelude.pure newValue, ..}
instance Property "Status" CertificateBasedAuthPropertiesProperty where
  type PropertyType "Status" CertificateBasedAuthPropertiesProperty = Value Prelude.Text
  set newValue CertificateBasedAuthPropertiesProperty {..}
    = CertificateBasedAuthPropertiesProperty
        {status = Prelude.pure newValue, ..}
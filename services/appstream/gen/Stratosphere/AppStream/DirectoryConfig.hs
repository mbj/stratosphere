module Stratosphere.AppStream.DirectoryConfig (
        module Exports, DirectoryConfig(..), mkDirectoryConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.DirectoryConfig.CertificateBasedAuthPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.DirectoryConfig.ServiceAccountCredentialsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DirectoryConfig
  = DirectoryConfig {certificateBasedAuthProperties :: (Prelude.Maybe CertificateBasedAuthPropertiesProperty),
                     directoryName :: (Value Prelude.Text),
                     organizationalUnitDistinguishedNames :: (ValueList Prelude.Text),
                     serviceAccountCredentials :: ServiceAccountCredentialsProperty}
mkDirectoryConfig ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> ServiceAccountCredentialsProperty -> DirectoryConfig
mkDirectoryConfig
  directoryName
  organizationalUnitDistinguishedNames
  serviceAccountCredentials
  = DirectoryConfig
      {directoryName = directoryName,
       organizationalUnitDistinguishedNames = organizationalUnitDistinguishedNames,
       serviceAccountCredentials = serviceAccountCredentials,
       certificateBasedAuthProperties = Prelude.Nothing}
instance ToResourceProperties DirectoryConfig where
  toResourceProperties DirectoryConfig {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::DirectoryConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DirectoryName" JSON..= directoryName,
                            "OrganizationalUnitDistinguishedNames"
                              JSON..= organizationalUnitDistinguishedNames,
                            "ServiceAccountCredentials" JSON..= serviceAccountCredentials]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateBasedAuthProperties"
                                 Prelude.<$> certificateBasedAuthProperties]))}
instance JSON.ToJSON DirectoryConfig where
  toJSON DirectoryConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DirectoryName" JSON..= directoryName,
               "OrganizationalUnitDistinguishedNames"
                 JSON..= organizationalUnitDistinguishedNames,
               "ServiceAccountCredentials" JSON..= serviceAccountCredentials]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateBasedAuthProperties"
                    Prelude.<$> certificateBasedAuthProperties])))
instance Property "CertificateBasedAuthProperties" DirectoryConfig where
  type PropertyType "CertificateBasedAuthProperties" DirectoryConfig = CertificateBasedAuthPropertiesProperty
  set newValue DirectoryConfig {..}
    = DirectoryConfig
        {certificateBasedAuthProperties = Prelude.pure newValue, ..}
instance Property "DirectoryName" DirectoryConfig where
  type PropertyType "DirectoryName" DirectoryConfig = Value Prelude.Text
  set newValue DirectoryConfig {..}
    = DirectoryConfig {directoryName = newValue, ..}
instance Property "OrganizationalUnitDistinguishedNames" DirectoryConfig where
  type PropertyType "OrganizationalUnitDistinguishedNames" DirectoryConfig = ValueList Prelude.Text
  set newValue DirectoryConfig {..}
    = DirectoryConfig
        {organizationalUnitDistinguishedNames = newValue, ..}
instance Property "ServiceAccountCredentials" DirectoryConfig where
  type PropertyType "ServiceAccountCredentials" DirectoryConfig = ServiceAccountCredentialsProperty
  set newValue DirectoryConfig {..}
    = DirectoryConfig {serviceAccountCredentials = newValue, ..}
module Stratosphere.ACMPCA.CertificateAuthority.GeneralNameProperty (
        module Exports, GeneralNameProperty(..), mkGeneralNameProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.EdiPartyNameProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.OtherNameProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.SubjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeneralNameProperty
  = GeneralNameProperty {directoryName :: (Prelude.Maybe SubjectProperty),
                         dnsName :: (Prelude.Maybe (Value Prelude.Text)),
                         ediPartyName :: (Prelude.Maybe EdiPartyNameProperty),
                         ipAddress :: (Prelude.Maybe (Value Prelude.Text)),
                         otherName :: (Prelude.Maybe OtherNameProperty),
                         registeredId :: (Prelude.Maybe (Value Prelude.Text)),
                         rfc822Name :: (Prelude.Maybe (Value Prelude.Text)),
                         uniformResourceIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
mkGeneralNameProperty :: GeneralNameProperty
mkGeneralNameProperty
  = GeneralNameProperty
      {directoryName = Prelude.Nothing, dnsName = Prelude.Nothing,
       ediPartyName = Prelude.Nothing, ipAddress = Prelude.Nothing,
       otherName = Prelude.Nothing, registeredId = Prelude.Nothing,
       rfc822Name = Prelude.Nothing,
       uniformResourceIdentifier = Prelude.Nothing}
instance ToResourceProperties GeneralNameProperty where
  toResourceProperties GeneralNameProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.GeneralName",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DirectoryName" Prelude.<$> directoryName,
                            (JSON..=) "DnsName" Prelude.<$> dnsName,
                            (JSON..=) "EdiPartyName" Prelude.<$> ediPartyName,
                            (JSON..=) "IpAddress" Prelude.<$> ipAddress,
                            (JSON..=) "OtherName" Prelude.<$> otherName,
                            (JSON..=) "RegisteredId" Prelude.<$> registeredId,
                            (JSON..=) "Rfc822Name" Prelude.<$> rfc822Name,
                            (JSON..=) "UniformResourceIdentifier"
                              Prelude.<$> uniformResourceIdentifier])}
instance JSON.ToJSON GeneralNameProperty where
  toJSON GeneralNameProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DirectoryName" Prelude.<$> directoryName,
               (JSON..=) "DnsName" Prelude.<$> dnsName,
               (JSON..=) "EdiPartyName" Prelude.<$> ediPartyName,
               (JSON..=) "IpAddress" Prelude.<$> ipAddress,
               (JSON..=) "OtherName" Prelude.<$> otherName,
               (JSON..=) "RegisteredId" Prelude.<$> registeredId,
               (JSON..=) "Rfc822Name" Prelude.<$> rfc822Name,
               (JSON..=) "UniformResourceIdentifier"
                 Prelude.<$> uniformResourceIdentifier]))
instance Property "DirectoryName" GeneralNameProperty where
  type PropertyType "DirectoryName" GeneralNameProperty = SubjectProperty
  set newValue GeneralNameProperty {..}
    = GeneralNameProperty {directoryName = Prelude.pure newValue, ..}
instance Property "DnsName" GeneralNameProperty where
  type PropertyType "DnsName" GeneralNameProperty = Value Prelude.Text
  set newValue GeneralNameProperty {..}
    = GeneralNameProperty {dnsName = Prelude.pure newValue, ..}
instance Property "EdiPartyName" GeneralNameProperty where
  type PropertyType "EdiPartyName" GeneralNameProperty = EdiPartyNameProperty
  set newValue GeneralNameProperty {..}
    = GeneralNameProperty {ediPartyName = Prelude.pure newValue, ..}
instance Property "IpAddress" GeneralNameProperty where
  type PropertyType "IpAddress" GeneralNameProperty = Value Prelude.Text
  set newValue GeneralNameProperty {..}
    = GeneralNameProperty {ipAddress = Prelude.pure newValue, ..}
instance Property "OtherName" GeneralNameProperty where
  type PropertyType "OtherName" GeneralNameProperty = OtherNameProperty
  set newValue GeneralNameProperty {..}
    = GeneralNameProperty {otherName = Prelude.pure newValue, ..}
instance Property "RegisteredId" GeneralNameProperty where
  type PropertyType "RegisteredId" GeneralNameProperty = Value Prelude.Text
  set newValue GeneralNameProperty {..}
    = GeneralNameProperty {registeredId = Prelude.pure newValue, ..}
instance Property "Rfc822Name" GeneralNameProperty where
  type PropertyType "Rfc822Name" GeneralNameProperty = Value Prelude.Text
  set newValue GeneralNameProperty {..}
    = GeneralNameProperty {rfc822Name = Prelude.pure newValue, ..}
instance Property "UniformResourceIdentifier" GeneralNameProperty where
  type PropertyType "UniformResourceIdentifier" GeneralNameProperty = Value Prelude.Text
  set newValue GeneralNameProperty {..}
    = GeneralNameProperty
        {uniformResourceIdentifier = Prelude.pure newValue, ..}
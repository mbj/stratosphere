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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html>
    GeneralNameProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html#cfn-acmpca-certificateauthority-generalname-directoryname>
                         directoryName :: (Prelude.Maybe SubjectProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html#cfn-acmpca-certificateauthority-generalname-dnsname>
                         dnsName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html#cfn-acmpca-certificateauthority-generalname-edipartyname>
                         ediPartyName :: (Prelude.Maybe EdiPartyNameProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html#cfn-acmpca-certificateauthority-generalname-ipaddress>
                         ipAddress :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html#cfn-acmpca-certificateauthority-generalname-othername>
                         otherName :: (Prelude.Maybe OtherNameProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html#cfn-acmpca-certificateauthority-generalname-registeredid>
                         registeredId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html#cfn-acmpca-certificateauthority-generalname-rfc822name>
                         rfc822Name :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-generalname.html#cfn-acmpca-certificateauthority-generalname-uniformresourceidentifier>
                         uniformResourceIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeneralNameProperty :: GeneralNameProperty
mkGeneralNameProperty
  = GeneralNameProperty
      {haddock_workaround_ = (), directoryName = Prelude.Nothing,
       dnsName = Prelude.Nothing, ediPartyName = Prelude.Nothing,
       ipAddress = Prelude.Nothing, otherName = Prelude.Nothing,
       registeredId = Prelude.Nothing, rfc822Name = Prelude.Nothing,
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
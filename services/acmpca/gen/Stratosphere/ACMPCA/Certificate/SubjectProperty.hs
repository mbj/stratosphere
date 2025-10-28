module Stratosphere.ACMPCA.Certificate.SubjectProperty (
        module Exports, SubjectProperty(..), mkSubjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.CustomAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html>
    SubjectProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-commonname>
                     commonName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-country>
                     country :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-customattributes>
                     customAttributes :: (Prelude.Maybe [CustomAttributeProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-distinguishednamequalifier>
                     distinguishedNameQualifier :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-generationqualifier>
                     generationQualifier :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-givenname>
                     givenName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-initials>
                     initials :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-locality>
                     locality :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-organization>
                     organization :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-organizationalunit>
                     organizationalUnit :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-pseudonym>
                     pseudonym :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-serialnumber>
                     serialNumber :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-state>
                     state :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-surname>
                     surname :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-subject.html#cfn-acmpca-certificate-subject-title>
                     title :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubjectProperty :: SubjectProperty
mkSubjectProperty
  = SubjectProperty
      {haddock_workaround_ = (), commonName = Prelude.Nothing,
       country = Prelude.Nothing, customAttributes = Prelude.Nothing,
       distinguishedNameQualifier = Prelude.Nothing,
       generationQualifier = Prelude.Nothing, givenName = Prelude.Nothing,
       initials = Prelude.Nothing, locality = Prelude.Nothing,
       organization = Prelude.Nothing,
       organizationalUnit = Prelude.Nothing, pseudonym = Prelude.Nothing,
       serialNumber = Prelude.Nothing, state = Prelude.Nothing,
       surname = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties SubjectProperty where
  toResourceProperties SubjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.Subject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CommonName" Prelude.<$> commonName,
                            (JSON..=) "Country" Prelude.<$> country,
                            (JSON..=) "CustomAttributes" Prelude.<$> customAttributes,
                            (JSON..=) "DistinguishedNameQualifier"
                              Prelude.<$> distinguishedNameQualifier,
                            (JSON..=) "GenerationQualifier" Prelude.<$> generationQualifier,
                            (JSON..=) "GivenName" Prelude.<$> givenName,
                            (JSON..=) "Initials" Prelude.<$> initials,
                            (JSON..=) "Locality" Prelude.<$> locality,
                            (JSON..=) "Organization" Prelude.<$> organization,
                            (JSON..=) "OrganizationalUnit" Prelude.<$> organizationalUnit,
                            (JSON..=) "Pseudonym" Prelude.<$> pseudonym,
                            (JSON..=) "SerialNumber" Prelude.<$> serialNumber,
                            (JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "Surname" Prelude.<$> surname,
                            (JSON..=) "Title" Prelude.<$> title])}
instance JSON.ToJSON SubjectProperty where
  toJSON SubjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CommonName" Prelude.<$> commonName,
               (JSON..=) "Country" Prelude.<$> country,
               (JSON..=) "CustomAttributes" Prelude.<$> customAttributes,
               (JSON..=) "DistinguishedNameQualifier"
                 Prelude.<$> distinguishedNameQualifier,
               (JSON..=) "GenerationQualifier" Prelude.<$> generationQualifier,
               (JSON..=) "GivenName" Prelude.<$> givenName,
               (JSON..=) "Initials" Prelude.<$> initials,
               (JSON..=) "Locality" Prelude.<$> locality,
               (JSON..=) "Organization" Prelude.<$> organization,
               (JSON..=) "OrganizationalUnit" Prelude.<$> organizationalUnit,
               (JSON..=) "Pseudonym" Prelude.<$> pseudonym,
               (JSON..=) "SerialNumber" Prelude.<$> serialNumber,
               (JSON..=) "State" Prelude.<$> state,
               (JSON..=) "Surname" Prelude.<$> surname,
               (JSON..=) "Title" Prelude.<$> title]))
instance Property "CommonName" SubjectProperty where
  type PropertyType "CommonName" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {commonName = Prelude.pure newValue, ..}
instance Property "Country" SubjectProperty where
  type PropertyType "Country" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {country = Prelude.pure newValue, ..}
instance Property "CustomAttributes" SubjectProperty where
  type PropertyType "CustomAttributes" SubjectProperty = [CustomAttributeProperty]
  set newValue SubjectProperty {..}
    = SubjectProperty {customAttributes = Prelude.pure newValue, ..}
instance Property "DistinguishedNameQualifier" SubjectProperty where
  type PropertyType "DistinguishedNameQualifier" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty
        {distinguishedNameQualifier = Prelude.pure newValue, ..}
instance Property "GenerationQualifier" SubjectProperty where
  type PropertyType "GenerationQualifier" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {generationQualifier = Prelude.pure newValue, ..}
instance Property "GivenName" SubjectProperty where
  type PropertyType "GivenName" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {givenName = Prelude.pure newValue, ..}
instance Property "Initials" SubjectProperty where
  type PropertyType "Initials" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {initials = Prelude.pure newValue, ..}
instance Property "Locality" SubjectProperty where
  type PropertyType "Locality" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {locality = Prelude.pure newValue, ..}
instance Property "Organization" SubjectProperty where
  type PropertyType "Organization" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {organization = Prelude.pure newValue, ..}
instance Property "OrganizationalUnit" SubjectProperty where
  type PropertyType "OrganizationalUnit" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {organizationalUnit = Prelude.pure newValue, ..}
instance Property "Pseudonym" SubjectProperty where
  type PropertyType "Pseudonym" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {pseudonym = Prelude.pure newValue, ..}
instance Property "SerialNumber" SubjectProperty where
  type PropertyType "SerialNumber" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {serialNumber = Prelude.pure newValue, ..}
instance Property "State" SubjectProperty where
  type PropertyType "State" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {state = Prelude.pure newValue, ..}
instance Property "Surname" SubjectProperty where
  type PropertyType "Surname" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {surname = Prelude.pure newValue, ..}
instance Property "Title" SubjectProperty where
  type PropertyType "Title" SubjectProperty = Value Prelude.Text
  set newValue SubjectProperty {..}
    = SubjectProperty {title = Prelude.pure newValue, ..}
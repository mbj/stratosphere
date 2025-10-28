module Stratosphere.PCAConnectorAD.Template.TemplateV4Property (
        module Exports, TemplateV4Property(..), mkTemplateV4Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.CertificateValidityProperty as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.EnrollmentFlagsV4Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.ExtensionsV4Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.GeneralFlagsV4Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.PrivateKeyAttributesV4Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.PrivateKeyFlagsV4Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.SubjectNameFlagsV4Property as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateV4Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html>
    TemplateV4Property {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-certificatevalidity>
                        certificateValidity :: CertificateValidityProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-enrollmentflags>
                        enrollmentFlags :: EnrollmentFlagsV4Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-extensions>
                        extensions :: ExtensionsV4Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-generalflags>
                        generalFlags :: GeneralFlagsV4Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-hashalgorithm>
                        hashAlgorithm :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-privatekeyattributes>
                        privateKeyAttributes :: PrivateKeyAttributesV4Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-privatekeyflags>
                        privateKeyFlags :: PrivateKeyFlagsV4Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-subjectnameflags>
                        subjectNameFlags :: SubjectNameFlagsV4Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-supersededtemplates>
                        supersededTemplates :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateV4Property ::
  CertificateValidityProperty
  -> EnrollmentFlagsV4Property
     -> ExtensionsV4Property
        -> GeneralFlagsV4Property
           -> PrivateKeyAttributesV4Property
              -> PrivateKeyFlagsV4Property
                 -> SubjectNameFlagsV4Property -> TemplateV4Property
mkTemplateV4Property
  certificateValidity
  enrollmentFlags
  extensions
  generalFlags
  privateKeyAttributes
  privateKeyFlags
  subjectNameFlags
  = TemplateV4Property
      {haddock_workaround_ = (),
       certificateValidity = certificateValidity,
       enrollmentFlags = enrollmentFlags, extensions = extensions,
       generalFlags = generalFlags,
       privateKeyAttributes = privateKeyAttributes,
       privateKeyFlags = privateKeyFlags,
       subjectNameFlags = subjectNameFlags,
       hashAlgorithm = Prelude.Nothing,
       supersededTemplates = Prelude.Nothing}
instance ToResourceProperties TemplateV4Property where
  toResourceProperties TemplateV4Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.TemplateV4",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateValidity" JSON..= certificateValidity,
                            "EnrollmentFlags" JSON..= enrollmentFlags,
                            "Extensions" JSON..= extensions,
                            "GeneralFlags" JSON..= generalFlags,
                            "PrivateKeyAttributes" JSON..= privateKeyAttributes,
                            "PrivateKeyFlags" JSON..= privateKeyFlags,
                            "SubjectNameFlags" JSON..= subjectNameFlags]
                           (Prelude.catMaybes
                              [(JSON..=) "HashAlgorithm" Prelude.<$> hashAlgorithm,
                               (JSON..=) "SupersededTemplates" Prelude.<$> supersededTemplates]))}
instance JSON.ToJSON TemplateV4Property where
  toJSON TemplateV4Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateValidity" JSON..= certificateValidity,
               "EnrollmentFlags" JSON..= enrollmentFlags,
               "Extensions" JSON..= extensions,
               "GeneralFlags" JSON..= generalFlags,
               "PrivateKeyAttributes" JSON..= privateKeyAttributes,
               "PrivateKeyFlags" JSON..= privateKeyFlags,
               "SubjectNameFlags" JSON..= subjectNameFlags]
              (Prelude.catMaybes
                 [(JSON..=) "HashAlgorithm" Prelude.<$> hashAlgorithm,
                  (JSON..=) "SupersededTemplates" Prelude.<$> supersededTemplates])))
instance Property "CertificateValidity" TemplateV4Property where
  type PropertyType "CertificateValidity" TemplateV4Property = CertificateValidityProperty
  set newValue TemplateV4Property {..}
    = TemplateV4Property {certificateValidity = newValue, ..}
instance Property "EnrollmentFlags" TemplateV4Property where
  type PropertyType "EnrollmentFlags" TemplateV4Property = EnrollmentFlagsV4Property
  set newValue TemplateV4Property {..}
    = TemplateV4Property {enrollmentFlags = newValue, ..}
instance Property "Extensions" TemplateV4Property where
  type PropertyType "Extensions" TemplateV4Property = ExtensionsV4Property
  set newValue TemplateV4Property {..}
    = TemplateV4Property {extensions = newValue, ..}
instance Property "GeneralFlags" TemplateV4Property where
  type PropertyType "GeneralFlags" TemplateV4Property = GeneralFlagsV4Property
  set newValue TemplateV4Property {..}
    = TemplateV4Property {generalFlags = newValue, ..}
instance Property "HashAlgorithm" TemplateV4Property where
  type PropertyType "HashAlgorithm" TemplateV4Property = Value Prelude.Text
  set newValue TemplateV4Property {..}
    = TemplateV4Property {hashAlgorithm = Prelude.pure newValue, ..}
instance Property "PrivateKeyAttributes" TemplateV4Property where
  type PropertyType "PrivateKeyAttributes" TemplateV4Property = PrivateKeyAttributesV4Property
  set newValue TemplateV4Property {..}
    = TemplateV4Property {privateKeyAttributes = newValue, ..}
instance Property "PrivateKeyFlags" TemplateV4Property where
  type PropertyType "PrivateKeyFlags" TemplateV4Property = PrivateKeyFlagsV4Property
  set newValue TemplateV4Property {..}
    = TemplateV4Property {privateKeyFlags = newValue, ..}
instance Property "SubjectNameFlags" TemplateV4Property where
  type PropertyType "SubjectNameFlags" TemplateV4Property = SubjectNameFlagsV4Property
  set newValue TemplateV4Property {..}
    = TemplateV4Property {subjectNameFlags = newValue, ..}
instance Property "SupersededTemplates" TemplateV4Property where
  type PropertyType "SupersededTemplates" TemplateV4Property = ValueList Prelude.Text
  set newValue TemplateV4Property {..}
    = TemplateV4Property
        {supersededTemplates = Prelude.pure newValue, ..}
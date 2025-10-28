module Stratosphere.PCAConnectorAD.Template.TemplateV3Property (
        module Exports, TemplateV3Property(..), mkTemplateV3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.CertificateValidityProperty as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.EnrollmentFlagsV3Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.ExtensionsV3Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.GeneralFlagsV3Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.PrivateKeyAttributesV3Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.PrivateKeyFlagsV3Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.SubjectNameFlagsV3Property as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateV3Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html>
    TemplateV3Property {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-certificatevalidity>
                        certificateValidity :: CertificateValidityProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-enrollmentflags>
                        enrollmentFlags :: EnrollmentFlagsV3Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-extensions>
                        extensions :: ExtensionsV3Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-generalflags>
                        generalFlags :: GeneralFlagsV3Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-hashalgorithm>
                        hashAlgorithm :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-privatekeyattributes>
                        privateKeyAttributes :: PrivateKeyAttributesV3Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-privatekeyflags>
                        privateKeyFlags :: PrivateKeyFlagsV3Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-subjectnameflags>
                        subjectNameFlags :: SubjectNameFlagsV3Property,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-supersededtemplates>
                        supersededTemplates :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateV3Property ::
  CertificateValidityProperty
  -> EnrollmentFlagsV3Property
     -> ExtensionsV3Property
        -> GeneralFlagsV3Property
           -> Value Prelude.Text
              -> PrivateKeyAttributesV3Property
                 -> PrivateKeyFlagsV3Property
                    -> SubjectNameFlagsV3Property -> TemplateV3Property
mkTemplateV3Property
  certificateValidity
  enrollmentFlags
  extensions
  generalFlags
  hashAlgorithm
  privateKeyAttributes
  privateKeyFlags
  subjectNameFlags
  = TemplateV3Property
      {haddock_workaround_ = (),
       certificateValidity = certificateValidity,
       enrollmentFlags = enrollmentFlags, extensions = extensions,
       generalFlags = generalFlags, hashAlgorithm = hashAlgorithm,
       privateKeyAttributes = privateKeyAttributes,
       privateKeyFlags = privateKeyFlags,
       subjectNameFlags = subjectNameFlags,
       supersededTemplates = Prelude.Nothing}
instance ToResourceProperties TemplateV3Property where
  toResourceProperties TemplateV3Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.TemplateV3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateValidity" JSON..= certificateValidity,
                            "EnrollmentFlags" JSON..= enrollmentFlags,
                            "Extensions" JSON..= extensions,
                            "GeneralFlags" JSON..= generalFlags,
                            "HashAlgorithm" JSON..= hashAlgorithm,
                            "PrivateKeyAttributes" JSON..= privateKeyAttributes,
                            "PrivateKeyFlags" JSON..= privateKeyFlags,
                            "SubjectNameFlags" JSON..= subjectNameFlags]
                           (Prelude.catMaybes
                              [(JSON..=) "SupersededTemplates"
                                 Prelude.<$> supersededTemplates]))}
instance JSON.ToJSON TemplateV3Property where
  toJSON TemplateV3Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateValidity" JSON..= certificateValidity,
               "EnrollmentFlags" JSON..= enrollmentFlags,
               "Extensions" JSON..= extensions,
               "GeneralFlags" JSON..= generalFlags,
               "HashAlgorithm" JSON..= hashAlgorithm,
               "PrivateKeyAttributes" JSON..= privateKeyAttributes,
               "PrivateKeyFlags" JSON..= privateKeyFlags,
               "SubjectNameFlags" JSON..= subjectNameFlags]
              (Prelude.catMaybes
                 [(JSON..=) "SupersededTemplates"
                    Prelude.<$> supersededTemplates])))
instance Property "CertificateValidity" TemplateV3Property where
  type PropertyType "CertificateValidity" TemplateV3Property = CertificateValidityProperty
  set newValue TemplateV3Property {..}
    = TemplateV3Property {certificateValidity = newValue, ..}
instance Property "EnrollmentFlags" TemplateV3Property where
  type PropertyType "EnrollmentFlags" TemplateV3Property = EnrollmentFlagsV3Property
  set newValue TemplateV3Property {..}
    = TemplateV3Property {enrollmentFlags = newValue, ..}
instance Property "Extensions" TemplateV3Property where
  type PropertyType "Extensions" TemplateV3Property = ExtensionsV3Property
  set newValue TemplateV3Property {..}
    = TemplateV3Property {extensions = newValue, ..}
instance Property "GeneralFlags" TemplateV3Property where
  type PropertyType "GeneralFlags" TemplateV3Property = GeneralFlagsV3Property
  set newValue TemplateV3Property {..}
    = TemplateV3Property {generalFlags = newValue, ..}
instance Property "HashAlgorithm" TemplateV3Property where
  type PropertyType "HashAlgorithm" TemplateV3Property = Value Prelude.Text
  set newValue TemplateV3Property {..}
    = TemplateV3Property {hashAlgorithm = newValue, ..}
instance Property "PrivateKeyAttributes" TemplateV3Property where
  type PropertyType "PrivateKeyAttributes" TemplateV3Property = PrivateKeyAttributesV3Property
  set newValue TemplateV3Property {..}
    = TemplateV3Property {privateKeyAttributes = newValue, ..}
instance Property "PrivateKeyFlags" TemplateV3Property where
  type PropertyType "PrivateKeyFlags" TemplateV3Property = PrivateKeyFlagsV3Property
  set newValue TemplateV3Property {..}
    = TemplateV3Property {privateKeyFlags = newValue, ..}
instance Property "SubjectNameFlags" TemplateV3Property where
  type PropertyType "SubjectNameFlags" TemplateV3Property = SubjectNameFlagsV3Property
  set newValue TemplateV3Property {..}
    = TemplateV3Property {subjectNameFlags = newValue, ..}
instance Property "SupersededTemplates" TemplateV3Property where
  type PropertyType "SupersededTemplates" TemplateV3Property = ValueList Prelude.Text
  set newValue TemplateV3Property {..}
    = TemplateV3Property
        {supersededTemplates = Prelude.pure newValue, ..}
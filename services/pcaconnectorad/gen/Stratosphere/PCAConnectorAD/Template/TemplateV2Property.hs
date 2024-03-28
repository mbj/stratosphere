module Stratosphere.PCAConnectorAD.Template.TemplateV2Property (
        module Exports, TemplateV2Property(..), mkTemplateV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.CertificateValidityProperty as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.EnrollmentFlagsV2Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.ExtensionsV2Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.GeneralFlagsV2Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.PrivateKeyAttributesV2Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.PrivateKeyFlagsV2Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.SubjectNameFlagsV2Property as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateV2Property
  = TemplateV2Property {certificateValidity :: CertificateValidityProperty,
                        enrollmentFlags :: EnrollmentFlagsV2Property,
                        extensions :: ExtensionsV2Property,
                        generalFlags :: GeneralFlagsV2Property,
                        privateKeyAttributes :: PrivateKeyAttributesV2Property,
                        privateKeyFlags :: PrivateKeyFlagsV2Property,
                        subjectNameFlags :: SubjectNameFlagsV2Property,
                        supersededTemplates :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateV2Property ::
  CertificateValidityProperty
  -> EnrollmentFlagsV2Property
     -> ExtensionsV2Property
        -> GeneralFlagsV2Property
           -> PrivateKeyAttributesV2Property
              -> PrivateKeyFlagsV2Property
                 -> SubjectNameFlagsV2Property -> TemplateV2Property
mkTemplateV2Property
  certificateValidity
  enrollmentFlags
  extensions
  generalFlags
  privateKeyAttributes
  privateKeyFlags
  subjectNameFlags
  = TemplateV2Property
      {certificateValidity = certificateValidity,
       enrollmentFlags = enrollmentFlags, extensions = extensions,
       generalFlags = generalFlags,
       privateKeyAttributes = privateKeyAttributes,
       privateKeyFlags = privateKeyFlags,
       subjectNameFlags = subjectNameFlags,
       supersededTemplates = Prelude.Nothing}
instance ToResourceProperties TemplateV2Property where
  toResourceProperties TemplateV2Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.TemplateV2",
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
                              [(JSON..=) "SupersededTemplates"
                                 Prelude.<$> supersededTemplates]))}
instance JSON.ToJSON TemplateV2Property where
  toJSON TemplateV2Property {..}
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
                 [(JSON..=) "SupersededTemplates"
                    Prelude.<$> supersededTemplates])))
instance Property "CertificateValidity" TemplateV2Property where
  type PropertyType "CertificateValidity" TemplateV2Property = CertificateValidityProperty
  set newValue TemplateV2Property {..}
    = TemplateV2Property {certificateValidity = newValue, ..}
instance Property "EnrollmentFlags" TemplateV2Property where
  type PropertyType "EnrollmentFlags" TemplateV2Property = EnrollmentFlagsV2Property
  set newValue TemplateV2Property {..}
    = TemplateV2Property {enrollmentFlags = newValue, ..}
instance Property "Extensions" TemplateV2Property where
  type PropertyType "Extensions" TemplateV2Property = ExtensionsV2Property
  set newValue TemplateV2Property {..}
    = TemplateV2Property {extensions = newValue, ..}
instance Property "GeneralFlags" TemplateV2Property where
  type PropertyType "GeneralFlags" TemplateV2Property = GeneralFlagsV2Property
  set newValue TemplateV2Property {..}
    = TemplateV2Property {generalFlags = newValue, ..}
instance Property "PrivateKeyAttributes" TemplateV2Property where
  type PropertyType "PrivateKeyAttributes" TemplateV2Property = PrivateKeyAttributesV2Property
  set newValue TemplateV2Property {..}
    = TemplateV2Property {privateKeyAttributes = newValue, ..}
instance Property "PrivateKeyFlags" TemplateV2Property where
  type PropertyType "PrivateKeyFlags" TemplateV2Property = PrivateKeyFlagsV2Property
  set newValue TemplateV2Property {..}
    = TemplateV2Property {privateKeyFlags = newValue, ..}
instance Property "SubjectNameFlags" TemplateV2Property where
  type PropertyType "SubjectNameFlags" TemplateV2Property = SubjectNameFlagsV2Property
  set newValue TemplateV2Property {..}
    = TemplateV2Property {subjectNameFlags = newValue, ..}
instance Property "SupersededTemplates" TemplateV2Property where
  type PropertyType "SupersededTemplates" TemplateV2Property = ValueList Prelude.Text
  set newValue TemplateV2Property {..}
    = TemplateV2Property
        {supersededTemplates = Prelude.pure newValue, ..}
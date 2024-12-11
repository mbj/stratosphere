module Stratosphere.RolesAnywhere.Profile.AttributeMappingProperty (
        module Exports, AttributeMappingProperty(..),
        mkAttributeMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RolesAnywhere.Profile.MappingRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeMappingProperty
  = AttributeMappingProperty {certificateField :: (Value Prelude.Text),
                              mappingRules :: [MappingRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeMappingProperty ::
  Value Prelude.Text
  -> [MappingRuleProperty] -> AttributeMappingProperty
mkAttributeMappingProperty certificateField mappingRules
  = AttributeMappingProperty
      {certificateField = certificateField, mappingRules = mappingRules}
instance ToResourceProperties AttributeMappingProperty where
  toResourceProperties AttributeMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::Profile.AttributeMapping",
         supportsTags = Prelude.False,
         properties = ["CertificateField" JSON..= certificateField,
                       "MappingRules" JSON..= mappingRules]}
instance JSON.ToJSON AttributeMappingProperty where
  toJSON AttributeMappingProperty {..}
    = JSON.object
        ["CertificateField" JSON..= certificateField,
         "MappingRules" JSON..= mappingRules]
instance Property "CertificateField" AttributeMappingProperty where
  type PropertyType "CertificateField" AttributeMappingProperty = Value Prelude.Text
  set newValue AttributeMappingProperty {..}
    = AttributeMappingProperty {certificateField = newValue, ..}
instance Property "MappingRules" AttributeMappingProperty where
  type PropertyType "MappingRules" AttributeMappingProperty = [MappingRuleProperty]
  set newValue AttributeMappingProperty {..}
    = AttributeMappingProperty {mappingRules = newValue, ..}
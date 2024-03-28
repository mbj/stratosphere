module Stratosphere.PCAConnectorAD.Template.TemplateDefinitionProperty (
        module Exports, TemplateDefinitionProperty(..),
        mkTemplateDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.TemplateV2Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.TemplateV3Property as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.TemplateV4Property as Exports
import Stratosphere.ResourceProperties
data TemplateDefinitionProperty
  = TemplateDefinitionProperty {templateV2 :: (Prelude.Maybe TemplateV2Property),
                                templateV3 :: (Prelude.Maybe TemplateV3Property),
                                templateV4 :: (Prelude.Maybe TemplateV4Property)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateDefinitionProperty :: TemplateDefinitionProperty
mkTemplateDefinitionProperty
  = TemplateDefinitionProperty
      {templateV2 = Prelude.Nothing, templateV3 = Prelude.Nothing,
       templateV4 = Prelude.Nothing}
instance ToResourceProperties TemplateDefinitionProperty where
  toResourceProperties TemplateDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.TemplateDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TemplateV2" Prelude.<$> templateV2,
                            (JSON..=) "TemplateV3" Prelude.<$> templateV3,
                            (JSON..=) "TemplateV4" Prelude.<$> templateV4])}
instance JSON.ToJSON TemplateDefinitionProperty where
  toJSON TemplateDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TemplateV2" Prelude.<$> templateV2,
               (JSON..=) "TemplateV3" Prelude.<$> templateV3,
               (JSON..=) "TemplateV4" Prelude.<$> templateV4]))
instance Property "TemplateV2" TemplateDefinitionProperty where
  type PropertyType "TemplateV2" TemplateDefinitionProperty = TemplateV2Property
  set newValue TemplateDefinitionProperty {..}
    = TemplateDefinitionProperty
        {templateV2 = Prelude.pure newValue, ..}
instance Property "TemplateV3" TemplateDefinitionProperty where
  type PropertyType "TemplateV3" TemplateDefinitionProperty = TemplateV3Property
  set newValue TemplateDefinitionProperty {..}
    = TemplateDefinitionProperty
        {templateV3 = Prelude.pure newValue, ..}
instance Property "TemplateV4" TemplateDefinitionProperty where
  type PropertyType "TemplateV4" TemplateDefinitionProperty = TemplateV4Property
  set newValue TemplateDefinitionProperty {..}
    = TemplateDefinitionProperty
        {templateV4 = Prelude.pure newValue, ..}
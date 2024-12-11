module Stratosphere.B2BI.Transformer.MappingProperty (
        MappingProperty(..), mkMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MappingProperty
  = MappingProperty {template :: (Prelude.Maybe (Value Prelude.Text)),
                     templateLanguage :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMappingProperty :: Value Prelude.Text -> MappingProperty
mkMappingProperty templateLanguage
  = MappingProperty
      {templateLanguage = templateLanguage, template = Prelude.Nothing}
instance ToResourceProperties MappingProperty where
  toResourceProperties MappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.Mapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TemplateLanguage" JSON..= templateLanguage]
                           (Prelude.catMaybes [(JSON..=) "Template" Prelude.<$> template]))}
instance JSON.ToJSON MappingProperty where
  toJSON MappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TemplateLanguage" JSON..= templateLanguage]
              (Prelude.catMaybes [(JSON..=) "Template" Prelude.<$> template])))
instance Property "Template" MappingProperty where
  type PropertyType "Template" MappingProperty = Value Prelude.Text
  set newValue MappingProperty {..}
    = MappingProperty {template = Prelude.pure newValue, ..}
instance Property "TemplateLanguage" MappingProperty where
  type PropertyType "TemplateLanguage" MappingProperty = Value Prelude.Text
  set newValue MappingProperty {..}
    = MappingProperty {templateLanguage = newValue, ..}
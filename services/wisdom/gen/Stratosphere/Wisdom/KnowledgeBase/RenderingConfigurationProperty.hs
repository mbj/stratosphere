module Stratosphere.Wisdom.KnowledgeBase.RenderingConfigurationProperty (
        RenderingConfigurationProperty(..),
        mkRenderingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RenderingConfigurationProperty
  = RenderingConfigurationProperty {templateUri :: (Prelude.Maybe (Value Prelude.Text))}
mkRenderingConfigurationProperty :: RenderingConfigurationProperty
mkRenderingConfigurationProperty
  = RenderingConfigurationProperty {templateUri = Prelude.Nothing}
instance ToResourceProperties RenderingConfigurationProperty where
  toResourceProperties RenderingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.RenderingConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TemplateUri" Prelude.<$> templateUri])}
instance JSON.ToJSON RenderingConfigurationProperty where
  toJSON RenderingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TemplateUri" Prelude.<$> templateUri]))
instance Property "TemplateUri" RenderingConfigurationProperty where
  type PropertyType "TemplateUri" RenderingConfigurationProperty = Value Prelude.Text
  set newValue RenderingConfigurationProperty {}
    = RenderingConfigurationProperty
        {templateUri = Prelude.pure newValue, ..}
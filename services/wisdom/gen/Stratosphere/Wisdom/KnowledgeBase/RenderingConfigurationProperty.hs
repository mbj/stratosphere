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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-renderingconfiguration.html>
    RenderingConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-renderingconfiguration.html#cfn-wisdom-knowledgebase-renderingconfiguration-templateuri>
                                    templateUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRenderingConfigurationProperty :: RenderingConfigurationProperty
mkRenderingConfigurationProperty
  = RenderingConfigurationProperty
      {haddock_workaround_ = (), templateUri = Prelude.Nothing}
instance ToResourceProperties RenderingConfigurationProperty where
  toResourceProperties RenderingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.RenderingConfiguration",
         supportsTags = Prelude.False,
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
  set newValue RenderingConfigurationProperty {..}
    = RenderingConfigurationProperty
        {templateUri = Prelude.pure newValue, ..}
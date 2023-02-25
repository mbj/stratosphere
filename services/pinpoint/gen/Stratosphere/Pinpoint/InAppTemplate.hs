module Stratosphere.Pinpoint.InAppTemplate (
        module Exports, InAppTemplate(..), mkInAppTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.InAppTemplate.InAppMessageContentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InAppTemplate
  = InAppTemplate {content :: (Prelude.Maybe [InAppMessageContentProperty]),
                   customConfig :: (Prelude.Maybe JSON.Object),
                   layout :: (Prelude.Maybe (Value Prelude.Text)),
                   tags :: (Prelude.Maybe JSON.Object),
                   templateDescription :: (Prelude.Maybe (Value Prelude.Text)),
                   templateName :: (Value Prelude.Text)}
mkInAppTemplate :: Value Prelude.Text -> InAppTemplate
mkInAppTemplate templateName
  = InAppTemplate
      {templateName = templateName, content = Prelude.Nothing,
       customConfig = Prelude.Nothing, layout = Prelude.Nothing,
       tags = Prelude.Nothing, templateDescription = Prelude.Nothing}
instance ToResourceProperties InAppTemplate where
  toResourceProperties InAppTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::InAppTemplate",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TemplateName" JSON..= templateName]
                           (Prelude.catMaybes
                              [(JSON..=) "Content" Prelude.<$> content,
                               (JSON..=) "CustomConfig" Prelude.<$> customConfig,
                               (JSON..=) "Layout" Prelude.<$> layout,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateDescription" Prelude.<$> templateDescription]))}
instance JSON.ToJSON InAppTemplate where
  toJSON InAppTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TemplateName" JSON..= templateName]
              (Prelude.catMaybes
                 [(JSON..=) "Content" Prelude.<$> content,
                  (JSON..=) "CustomConfig" Prelude.<$> customConfig,
                  (JSON..=) "Layout" Prelude.<$> layout,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateDescription" Prelude.<$> templateDescription])))
instance Property "Content" InAppTemplate where
  type PropertyType "Content" InAppTemplate = [InAppMessageContentProperty]
  set newValue InAppTemplate {..}
    = InAppTemplate {content = Prelude.pure newValue, ..}
instance Property "CustomConfig" InAppTemplate where
  type PropertyType "CustomConfig" InAppTemplate = JSON.Object
  set newValue InAppTemplate {..}
    = InAppTemplate {customConfig = Prelude.pure newValue, ..}
instance Property "Layout" InAppTemplate where
  type PropertyType "Layout" InAppTemplate = Value Prelude.Text
  set newValue InAppTemplate {..}
    = InAppTemplate {layout = Prelude.pure newValue, ..}
instance Property "Tags" InAppTemplate where
  type PropertyType "Tags" InAppTemplate = JSON.Object
  set newValue InAppTemplate {..}
    = InAppTemplate {tags = Prelude.pure newValue, ..}
instance Property "TemplateDescription" InAppTemplate where
  type PropertyType "TemplateDescription" InAppTemplate = Value Prelude.Text
  set newValue InAppTemplate {..}
    = InAppTemplate {templateDescription = Prelude.pure newValue, ..}
instance Property "TemplateName" InAppTemplate where
  type PropertyType "TemplateName" InAppTemplate = Value Prelude.Text
  set newValue InAppTemplate {..}
    = InAppTemplate {templateName = newValue, ..}
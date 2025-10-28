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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-inapptemplate.html>
    InAppTemplate {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-inapptemplate.html#cfn-pinpoint-inapptemplate-content>
                   content :: (Prelude.Maybe [InAppMessageContentProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-inapptemplate.html#cfn-pinpoint-inapptemplate-customconfig>
                   customConfig :: (Prelude.Maybe JSON.Object),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-inapptemplate.html#cfn-pinpoint-inapptemplate-layout>
                   layout :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-inapptemplate.html#cfn-pinpoint-inapptemplate-tags>
                   tags :: (Prelude.Maybe JSON.Object),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-inapptemplate.html#cfn-pinpoint-inapptemplate-templatedescription>
                   templateDescription :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-inapptemplate.html#cfn-pinpoint-inapptemplate-templatename>
                   templateName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInAppTemplate :: Value Prelude.Text -> InAppTemplate
mkInAppTemplate templateName
  = InAppTemplate
      {haddock_workaround_ = (), templateName = templateName,
       content = Prelude.Nothing, customConfig = Prelude.Nothing,
       layout = Prelude.Nothing, tags = Prelude.Nothing,
       templateDescription = Prelude.Nothing}
instance ToResourceProperties InAppTemplate where
  toResourceProperties InAppTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::InAppTemplate",
         supportsTags = Prelude.True,
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
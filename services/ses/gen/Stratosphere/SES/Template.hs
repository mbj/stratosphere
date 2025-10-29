module Stratosphere.SES.Template (
        module Exports, Template(..), mkTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.Template.TemplateProperty as Exports
import Stratosphere.ResourceProperties
data Template
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-template.html>
    Template {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-template.html#cfn-ses-template-template>
              template :: (Prelude.Maybe TemplateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplate :: Template
mkTemplate = Template {template = Prelude.Nothing}
instance ToResourceProperties Template where
  toResourceProperties Template {..}
    = ResourceProperties
        {awsType = "AWS::SES::Template", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Template" Prelude.<$> template])}
instance JSON.ToJSON Template where
  toJSON Template {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Template" Prelude.<$> template]))
instance Property "Template" Template where
  type PropertyType "Template" Template = TemplateProperty
  set newValue Template {}
    = Template {template = Prelude.pure newValue, ..}
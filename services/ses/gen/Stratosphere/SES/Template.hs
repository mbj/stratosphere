module Stratosphere.SES.Template (
        module Exports, Template(..), mkTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.Template.TemplateProperty as Exports
import Stratosphere.ResourceProperties
data Template
  = Template {template :: (Prelude.Maybe TemplateProperty)}
mkTemplate :: Template
mkTemplate = Template {template = Prelude.Nothing}
instance ToResourceProperties Template where
  toResourceProperties Template {..}
    = ResourceProperties
        {awsType = "AWS::SES::Template",
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
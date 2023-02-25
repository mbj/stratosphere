module Stratosphere.QuickSight.Template.TemplateErrorProperty (
        TemplateErrorProperty(..), mkTemplateErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateErrorProperty
  = TemplateErrorProperty {message :: (Prelude.Maybe (Value Prelude.Text)),
                           type' :: (Prelude.Maybe (Value Prelude.Text))}
mkTemplateErrorProperty :: TemplateErrorProperty
mkTemplateErrorProperty
  = TemplateErrorProperty
      {message = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties TemplateErrorProperty where
  toResourceProperties TemplateErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TemplateError",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON TemplateErrorProperty where
  toJSON TemplateErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Message" TemplateErrorProperty where
  type PropertyType "Message" TemplateErrorProperty = Value Prelude.Text
  set newValue TemplateErrorProperty {..}
    = TemplateErrorProperty {message = Prelude.pure newValue, ..}
instance Property "Type" TemplateErrorProperty where
  type PropertyType "Type" TemplateErrorProperty = Value Prelude.Text
  set newValue TemplateErrorProperty {..}
    = TemplateErrorProperty {type' = Prelude.pure newValue, ..}
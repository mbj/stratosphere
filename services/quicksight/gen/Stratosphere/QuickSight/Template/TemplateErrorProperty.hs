module Stratosphere.QuickSight.Template.TemplateErrorProperty (
        module Exports, TemplateErrorProperty(..), mkTemplateErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.EntityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateErrorProperty
  = TemplateErrorProperty {message :: (Prelude.Maybe (Value Prelude.Text)),
                           type' :: (Prelude.Maybe (Value Prelude.Text)),
                           violatedEntities :: (Prelude.Maybe [EntityProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateErrorProperty :: TemplateErrorProperty
mkTemplateErrorProperty
  = TemplateErrorProperty
      {message = Prelude.Nothing, type' = Prelude.Nothing,
       violatedEntities = Prelude.Nothing}
instance ToResourceProperties TemplateErrorProperty where
  toResourceProperties TemplateErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TemplateError",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "ViolatedEntities" Prelude.<$> violatedEntities])}
instance JSON.ToJSON TemplateErrorProperty where
  toJSON TemplateErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "ViolatedEntities" Prelude.<$> violatedEntities]))
instance Property "Message" TemplateErrorProperty where
  type PropertyType "Message" TemplateErrorProperty = Value Prelude.Text
  set newValue TemplateErrorProperty {..}
    = TemplateErrorProperty {message = Prelude.pure newValue, ..}
instance Property "Type" TemplateErrorProperty where
  type PropertyType "Type" TemplateErrorProperty = Value Prelude.Text
  set newValue TemplateErrorProperty {..}
    = TemplateErrorProperty {type' = Prelude.pure newValue, ..}
instance Property "ViolatedEntities" TemplateErrorProperty where
  type PropertyType "ViolatedEntities" TemplateErrorProperty = [EntityProperty]
  set newValue TemplateErrorProperty {..}
    = TemplateErrorProperty
        {violatedEntities = Prelude.pure newValue, ..}
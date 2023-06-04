module Stratosphere.Connect.EvaluationForm.EvaluationFormSectionProperty (
        module Exports, EvaluationFormSectionProperty(..),
        mkEvaluationFormSectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormSectionProperty
  = EvaluationFormSectionProperty {instructions :: (Prelude.Maybe (Value Prelude.Text)),
                                   items :: (Prelude.Maybe [EvaluationFormItemProperty]),
                                   refId :: (Value Prelude.Text),
                                   title :: (Value Prelude.Text),
                                   weight :: (Prelude.Maybe (Value Prelude.Double))}
mkEvaluationFormSectionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EvaluationFormSectionProperty
mkEvaluationFormSectionProperty refId title
  = EvaluationFormSectionProperty
      {refId = refId, title = title, instructions = Prelude.Nothing,
       items = Prelude.Nothing, weight = Prelude.Nothing}
instance ToResourceProperties EvaluationFormSectionProperty where
  toResourceProperties EvaluationFormSectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormSection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RefId" JSON..= refId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Instructions" Prelude.<$> instructions,
                               (JSON..=) "Items" Prelude.<$> items,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON EvaluationFormSectionProperty where
  toJSON EvaluationFormSectionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RefId" JSON..= refId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Instructions" Prelude.<$> instructions,
                  (JSON..=) "Items" Prelude.<$> items,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "Instructions" EvaluationFormSectionProperty where
  type PropertyType "Instructions" EvaluationFormSectionProperty = Value Prelude.Text
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty
        {instructions = Prelude.pure newValue, ..}
instance Property "Items" EvaluationFormSectionProperty where
  type PropertyType "Items" EvaluationFormSectionProperty = [EvaluationFormItemProperty]
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty {items = Prelude.pure newValue, ..}
instance Property "RefId" EvaluationFormSectionProperty where
  type PropertyType "RefId" EvaluationFormSectionProperty = Value Prelude.Text
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty {refId = newValue, ..}
instance Property "Title" EvaluationFormSectionProperty where
  type PropertyType "Title" EvaluationFormSectionProperty = Value Prelude.Text
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty {title = newValue, ..}
instance Property "Weight" EvaluationFormSectionProperty where
  type PropertyType "Weight" EvaluationFormSectionProperty = Value Prelude.Double
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty
        {weight = Prelude.pure newValue, ..}
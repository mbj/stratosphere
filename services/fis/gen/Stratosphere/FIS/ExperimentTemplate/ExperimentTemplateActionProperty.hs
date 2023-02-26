module Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateActionProperty (
        ExperimentTemplateActionProperty(..),
        mkExperimentTemplateActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplateActionProperty
  = ExperimentTemplateActionProperty {actionId :: (Value Prelude.Text),
                                      description :: (Prelude.Maybe (Value Prelude.Text)),
                                      parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                      startAfter :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      targets :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkExperimentTemplateActionProperty ::
  Value Prelude.Text -> ExperimentTemplateActionProperty
mkExperimentTemplateActionProperty actionId
  = ExperimentTemplateActionProperty
      {actionId = actionId, description = Prelude.Nothing,
       parameters = Prelude.Nothing, startAfter = Prelude.Nothing,
       targets = Prelude.Nothing}
instance ToResourceProperties ExperimentTemplateActionProperty where
  toResourceProperties ExperimentTemplateActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentTemplateAction",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionId" JSON..= actionId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "StartAfter" Prelude.<$> startAfter,
                               (JSON..=) "Targets" Prelude.<$> targets]))}
instance JSON.ToJSON ExperimentTemplateActionProperty where
  toJSON ExperimentTemplateActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionId" JSON..= actionId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "StartAfter" Prelude.<$> startAfter,
                  (JSON..=) "Targets" Prelude.<$> targets])))
instance Property "ActionId" ExperimentTemplateActionProperty where
  type PropertyType "ActionId" ExperimentTemplateActionProperty = Value Prelude.Text
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty {actionId = newValue, ..}
instance Property "Description" ExperimentTemplateActionProperty where
  type PropertyType "Description" ExperimentTemplateActionProperty = Value Prelude.Text
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty
        {description = Prelude.pure newValue, ..}
instance Property "Parameters" ExperimentTemplateActionProperty where
  type PropertyType "Parameters" ExperimentTemplateActionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "StartAfter" ExperimentTemplateActionProperty where
  type PropertyType "StartAfter" ExperimentTemplateActionProperty = ValueList Prelude.Text
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty
        {startAfter = Prelude.pure newValue, ..}
instance Property "Targets" ExperimentTemplateActionProperty where
  type PropertyType "Targets" ExperimentTemplateActionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty
        {targets = Prelude.pure newValue, ..}
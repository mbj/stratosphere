module Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateStopConditionProperty (
        ExperimentTemplateStopConditionProperty(..),
        mkExperimentTemplateStopConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplateStopConditionProperty
  = ExperimentTemplateStopConditionProperty {source :: (Value Prelude.Text),
                                             value :: (Prelude.Maybe (Value Prelude.Text))}
mkExperimentTemplateStopConditionProperty ::
  Value Prelude.Text -> ExperimentTemplateStopConditionProperty
mkExperimentTemplateStopConditionProperty source
  = ExperimentTemplateStopConditionProperty
      {source = source, value = Prelude.Nothing}
instance ToResourceProperties ExperimentTemplateStopConditionProperty where
  toResourceProperties ExperimentTemplateStopConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentTemplateStopCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Source" JSON..= source]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON ExperimentTemplateStopConditionProperty where
  toJSON ExperimentTemplateStopConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Source" JSON..= source]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Source" ExperimentTemplateStopConditionProperty where
  type PropertyType "Source" ExperimentTemplateStopConditionProperty = Value Prelude.Text
  set newValue ExperimentTemplateStopConditionProperty {..}
    = ExperimentTemplateStopConditionProperty {source = newValue, ..}
instance Property "Value" ExperimentTemplateStopConditionProperty where
  type PropertyType "Value" ExperimentTemplateStopConditionProperty = Value Prelude.Text
  set newValue ExperimentTemplateStopConditionProperty {..}
    = ExperimentTemplateStopConditionProperty
        {value = Prelude.pure newValue, ..}
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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatestopcondition.html>
    ExperimentTemplateStopConditionProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatestopcondition.html#cfn-fis-experimenttemplate-experimenttemplatestopcondition-source>
                                             source :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatestopcondition.html#cfn-fis-experimenttemplate-experimenttemplatestopcondition-value>
                                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplateStopConditionProperty ::
  Value Prelude.Text -> ExperimentTemplateStopConditionProperty
mkExperimentTemplateStopConditionProperty source
  = ExperimentTemplateStopConditionProperty
      {haddock_workaround_ = (), source = source,
       value = Prelude.Nothing}
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
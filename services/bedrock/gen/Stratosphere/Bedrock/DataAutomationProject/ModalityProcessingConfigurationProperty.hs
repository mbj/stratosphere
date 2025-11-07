module Stratosphere.Bedrock.DataAutomationProject.ModalityProcessingConfigurationProperty (
        ModalityProcessingConfigurationProperty(..),
        mkModalityProcessingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModalityProcessingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-modalityprocessingconfiguration.html>
    ModalityProcessingConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-modalityprocessingconfiguration.html#cfn-bedrock-dataautomationproject-modalityprocessingconfiguration-state>
                                             state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModalityProcessingConfigurationProperty ::
  ModalityProcessingConfigurationProperty
mkModalityProcessingConfigurationProperty
  = ModalityProcessingConfigurationProperty
      {haddock_workaround_ = (), state = Prelude.Nothing}
instance ToResourceProperties ModalityProcessingConfigurationProperty where
  toResourceProperties ModalityProcessingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.ModalityProcessingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON ModalityProcessingConfigurationProperty where
  toJSON ModalityProcessingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state]))
instance Property "State" ModalityProcessingConfigurationProperty where
  type PropertyType "State" ModalityProcessingConfigurationProperty = Value Prelude.Text
  set newValue ModalityProcessingConfigurationProperty {..}
    = ModalityProcessingConfigurationProperty
        {state = Prelude.pure newValue, ..}
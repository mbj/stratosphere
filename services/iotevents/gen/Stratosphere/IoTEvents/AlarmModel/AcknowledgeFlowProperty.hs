module Stratosphere.IoTEvents.AlarmModel.AcknowledgeFlowProperty (
        AcknowledgeFlowProperty(..), mkAcknowledgeFlowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcknowledgeFlowProperty
  = AcknowledgeFlowProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkAcknowledgeFlowProperty :: AcknowledgeFlowProperty
mkAcknowledgeFlowProperty
  = AcknowledgeFlowProperty {enabled = Prelude.Nothing}
instance ToResourceProperties AcknowledgeFlowProperty where
  toResourceProperties AcknowledgeFlowProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.AcknowledgeFlow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON AcknowledgeFlowProperty where
  toJSON AcknowledgeFlowProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" AcknowledgeFlowProperty where
  type PropertyType "Enabled" AcknowledgeFlowProperty = Value Prelude.Bool
  set newValue AcknowledgeFlowProperty {}
    = AcknowledgeFlowProperty {enabled = Prelude.pure newValue, ..}
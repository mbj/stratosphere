module Stratosphere.IoTFleetWise.Campaign.ConditionBasedSignalFetchConfigProperty (
        ConditionBasedSignalFetchConfigProperty(..),
        mkConditionBasedSignalFetchConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionBasedSignalFetchConfigProperty
  = ConditionBasedSignalFetchConfigProperty {conditionExpression :: (Value Prelude.Text),
                                             triggerMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionBasedSignalFetchConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConditionBasedSignalFetchConfigProperty
mkConditionBasedSignalFetchConfigProperty
  conditionExpression
  triggerMode
  = ConditionBasedSignalFetchConfigProperty
      {conditionExpression = conditionExpression,
       triggerMode = triggerMode}
instance ToResourceProperties ConditionBasedSignalFetchConfigProperty where
  toResourceProperties ConditionBasedSignalFetchConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.ConditionBasedSignalFetchConfig",
         supportsTags = Prelude.False,
         properties = ["ConditionExpression" JSON..= conditionExpression,
                       "TriggerMode" JSON..= triggerMode]}
instance JSON.ToJSON ConditionBasedSignalFetchConfigProperty where
  toJSON ConditionBasedSignalFetchConfigProperty {..}
    = JSON.object
        ["ConditionExpression" JSON..= conditionExpression,
         "TriggerMode" JSON..= triggerMode]
instance Property "ConditionExpression" ConditionBasedSignalFetchConfigProperty where
  type PropertyType "ConditionExpression" ConditionBasedSignalFetchConfigProperty = Value Prelude.Text
  set newValue ConditionBasedSignalFetchConfigProperty {..}
    = ConditionBasedSignalFetchConfigProperty
        {conditionExpression = newValue, ..}
instance Property "TriggerMode" ConditionBasedSignalFetchConfigProperty where
  type PropertyType "TriggerMode" ConditionBasedSignalFetchConfigProperty = Value Prelude.Text
  set newValue ConditionBasedSignalFetchConfigProperty {..}
    = ConditionBasedSignalFetchConfigProperty
        {triggerMode = newValue, ..}
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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-conditionbasedsignalfetchconfig.html>
    ConditionBasedSignalFetchConfigProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-conditionbasedsignalfetchconfig.html#cfn-iotfleetwise-campaign-conditionbasedsignalfetchconfig-conditionexpression>
                                             conditionExpression :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-conditionbasedsignalfetchconfig.html#cfn-iotfleetwise-campaign-conditionbasedsignalfetchconfig-triggermode>
                                             triggerMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionBasedSignalFetchConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConditionBasedSignalFetchConfigProperty
mkConditionBasedSignalFetchConfigProperty
  conditionExpression
  triggerMode
  = ConditionBasedSignalFetchConfigProperty
      {haddock_workaround_ = (),
       conditionExpression = conditionExpression,
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
module Stratosphere.AppFlow.Flow.TriggerConfigProperty (
        module Exports, TriggerConfigProperty(..), mkTriggerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ScheduledTriggerPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TriggerConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-triggerconfig.html>
    TriggerConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-triggerconfig.html#cfn-appflow-flow-triggerconfig-triggerproperties>
                           triggerProperties :: (Prelude.Maybe ScheduledTriggerPropertiesProperty),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-triggerconfig.html#cfn-appflow-flow-triggerconfig-triggertype>
                           triggerType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTriggerConfigProperty ::
  Value Prelude.Text -> TriggerConfigProperty
mkTriggerConfigProperty triggerType
  = TriggerConfigProperty
      {triggerType = triggerType, triggerProperties = Prelude.Nothing}
instance ToResourceProperties TriggerConfigProperty where
  toResourceProperties TriggerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.TriggerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TriggerType" JSON..= triggerType]
                           (Prelude.catMaybes
                              [(JSON..=) "TriggerProperties" Prelude.<$> triggerProperties]))}
instance JSON.ToJSON TriggerConfigProperty where
  toJSON TriggerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TriggerType" JSON..= triggerType]
              (Prelude.catMaybes
                 [(JSON..=) "TriggerProperties" Prelude.<$> triggerProperties])))
instance Property "TriggerProperties" TriggerConfigProperty where
  type PropertyType "TriggerProperties" TriggerConfigProperty = ScheduledTriggerPropertiesProperty
  set newValue TriggerConfigProperty {..}
    = TriggerConfigProperty
        {triggerProperties = Prelude.pure newValue, ..}
instance Property "TriggerType" TriggerConfigProperty where
  type PropertyType "TriggerType" TriggerConfigProperty = Value Prelude.Text
  set newValue TriggerConfigProperty {..}
    = TriggerConfigProperty {triggerType = newValue, ..}
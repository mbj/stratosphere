module Stratosphere.IoTEvents.DetectorModel.StateProperty (
        module Exports, StateProperty(..), mkStateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.OnEnterProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.OnExitProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.OnInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StateProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html>
    StateProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-onenter>
                   onEnter :: (Prelude.Maybe OnEnterProperty),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-onexit>
                   onExit :: (Prelude.Maybe OnExitProperty),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-oninput>
                   onInput :: (Prelude.Maybe OnInputProperty),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-statename>
                   stateName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStateProperty :: Value Prelude.Text -> StateProperty
mkStateProperty stateName
  = StateProperty
      {stateName = stateName, onEnter = Prelude.Nothing,
       onExit = Prelude.Nothing, onInput = Prelude.Nothing}
instance ToResourceProperties StateProperty where
  toResourceProperties StateProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.State",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StateName" JSON..= stateName]
                           (Prelude.catMaybes
                              [(JSON..=) "OnEnter" Prelude.<$> onEnter,
                               (JSON..=) "OnExit" Prelude.<$> onExit,
                               (JSON..=) "OnInput" Prelude.<$> onInput]))}
instance JSON.ToJSON StateProperty where
  toJSON StateProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StateName" JSON..= stateName]
              (Prelude.catMaybes
                 [(JSON..=) "OnEnter" Prelude.<$> onEnter,
                  (JSON..=) "OnExit" Prelude.<$> onExit,
                  (JSON..=) "OnInput" Prelude.<$> onInput])))
instance Property "OnEnter" StateProperty where
  type PropertyType "OnEnter" StateProperty = OnEnterProperty
  set newValue StateProperty {..}
    = StateProperty {onEnter = Prelude.pure newValue, ..}
instance Property "OnExit" StateProperty where
  type PropertyType "OnExit" StateProperty = OnExitProperty
  set newValue StateProperty {..}
    = StateProperty {onExit = Prelude.pure newValue, ..}
instance Property "OnInput" StateProperty where
  type PropertyType "OnInput" StateProperty = OnInputProperty
  set newValue StateProperty {..}
    = StateProperty {onInput = Prelude.pure newValue, ..}
instance Property "StateName" StateProperty where
  type PropertyType "StateName" StateProperty = Value Prelude.Text
  set newValue StateProperty {..}
    = StateProperty {stateName = newValue, ..}
module Stratosphere.ControlTower.EnabledControl (
        EnabledControl(..), mkEnabledControl
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnabledControl
  = EnabledControl {controlIdentifier :: (Value Prelude.Text),
                    targetIdentifier :: (Value Prelude.Text)}
mkEnabledControl ::
  Value Prelude.Text -> Value Prelude.Text -> EnabledControl
mkEnabledControl controlIdentifier targetIdentifier
  = EnabledControl
      {controlIdentifier = controlIdentifier,
       targetIdentifier = targetIdentifier}
instance ToResourceProperties EnabledControl where
  toResourceProperties EnabledControl {..}
    = ResourceProperties
        {awsType = "AWS::ControlTower::EnabledControl",
         properties = ["ControlIdentifier" JSON..= controlIdentifier,
                       "TargetIdentifier" JSON..= targetIdentifier]}
instance JSON.ToJSON EnabledControl where
  toJSON EnabledControl {..}
    = JSON.object
        ["ControlIdentifier" JSON..= controlIdentifier,
         "TargetIdentifier" JSON..= targetIdentifier]
instance Property "ControlIdentifier" EnabledControl where
  type PropertyType "ControlIdentifier" EnabledControl = Value Prelude.Text
  set newValue EnabledControl {..}
    = EnabledControl {controlIdentifier = newValue, ..}
instance Property "TargetIdentifier" EnabledControl where
  type PropertyType "TargetIdentifier" EnabledControl = Value Prelude.Text
  set newValue EnabledControl {..}
    = EnabledControl {targetIdentifier = newValue, ..}
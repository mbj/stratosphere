module Stratosphere.ControlTower.EnabledControl (
        module Exports, EnabledControl(..), mkEnabledControl
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ControlTower.EnabledControl.EnabledControlParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EnabledControl
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledcontrol.html>
    EnabledControl {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledcontrol.html#cfn-controltower-enabledcontrol-controlidentifier>
                    controlIdentifier :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledcontrol.html#cfn-controltower-enabledcontrol-parameters>
                    parameters :: (Prelude.Maybe [EnabledControlParameterProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledcontrol.html#cfn-controltower-enabledcontrol-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledcontrol.html#cfn-controltower-enabledcontrol-targetidentifier>
                    targetIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnabledControl ::
  Value Prelude.Text -> Value Prelude.Text -> EnabledControl
mkEnabledControl controlIdentifier targetIdentifier
  = EnabledControl
      {haddock_workaround_ = (), controlIdentifier = controlIdentifier,
       targetIdentifier = targetIdentifier, parameters = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EnabledControl where
  toResourceProperties EnabledControl {..}
    = ResourceProperties
        {awsType = "AWS::ControlTower::EnabledControl",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ControlIdentifier" JSON..= controlIdentifier,
                            "TargetIdentifier" JSON..= targetIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EnabledControl where
  toJSON EnabledControl {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ControlIdentifier" JSON..= controlIdentifier,
               "TargetIdentifier" JSON..= targetIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ControlIdentifier" EnabledControl where
  type PropertyType "ControlIdentifier" EnabledControl = Value Prelude.Text
  set newValue EnabledControl {..}
    = EnabledControl {controlIdentifier = newValue, ..}
instance Property "Parameters" EnabledControl where
  type PropertyType "Parameters" EnabledControl = [EnabledControlParameterProperty]
  set newValue EnabledControl {..}
    = EnabledControl {parameters = Prelude.pure newValue, ..}
instance Property "Tags" EnabledControl where
  type PropertyType "Tags" EnabledControl = [Tag]
  set newValue EnabledControl {..}
    = EnabledControl {tags = Prelude.pure newValue, ..}
instance Property "TargetIdentifier" EnabledControl where
  type PropertyType "TargetIdentifier" EnabledControl = Value Prelude.Text
  set newValue EnabledControl {..}
    = EnabledControl {targetIdentifier = newValue, ..}
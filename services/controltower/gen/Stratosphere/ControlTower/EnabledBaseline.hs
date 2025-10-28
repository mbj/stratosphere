module Stratosphere.ControlTower.EnabledBaseline (
        module Exports, EnabledBaseline(..), mkEnabledBaseline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ControlTower.EnabledBaseline.ParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EnabledBaseline
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledbaseline.html>
    EnabledBaseline {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledbaseline.html#cfn-controltower-enabledbaseline-baselineidentifier>
                     baselineIdentifier :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledbaseline.html#cfn-controltower-enabledbaseline-baselineversion>
                     baselineVersion :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledbaseline.html#cfn-controltower-enabledbaseline-parameters>
                     parameters :: (Prelude.Maybe [ParameterProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledbaseline.html#cfn-controltower-enabledbaseline-tags>
                     tags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledbaseline.html#cfn-controltower-enabledbaseline-targetidentifier>
                     targetIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnabledBaseline ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> EnabledBaseline
mkEnabledBaseline
  baselineIdentifier
  baselineVersion
  targetIdentifier
  = EnabledBaseline
      {haddock_workaround_ = (), baselineIdentifier = baselineIdentifier,
       baselineVersion = baselineVersion,
       targetIdentifier = targetIdentifier, parameters = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EnabledBaseline where
  toResourceProperties EnabledBaseline {..}
    = ResourceProperties
        {awsType = "AWS::ControlTower::EnabledBaseline",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BaselineIdentifier" JSON..= baselineIdentifier,
                            "BaselineVersion" JSON..= baselineVersion,
                            "TargetIdentifier" JSON..= targetIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EnabledBaseline where
  toJSON EnabledBaseline {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BaselineIdentifier" JSON..= baselineIdentifier,
               "BaselineVersion" JSON..= baselineVersion,
               "TargetIdentifier" JSON..= targetIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BaselineIdentifier" EnabledBaseline where
  type PropertyType "BaselineIdentifier" EnabledBaseline = Value Prelude.Text
  set newValue EnabledBaseline {..}
    = EnabledBaseline {baselineIdentifier = newValue, ..}
instance Property "BaselineVersion" EnabledBaseline where
  type PropertyType "BaselineVersion" EnabledBaseline = Value Prelude.Text
  set newValue EnabledBaseline {..}
    = EnabledBaseline {baselineVersion = newValue, ..}
instance Property "Parameters" EnabledBaseline where
  type PropertyType "Parameters" EnabledBaseline = [ParameterProperty]
  set newValue EnabledBaseline {..}
    = EnabledBaseline {parameters = Prelude.pure newValue, ..}
instance Property "Tags" EnabledBaseline where
  type PropertyType "Tags" EnabledBaseline = [Tag]
  set newValue EnabledBaseline {..}
    = EnabledBaseline {tags = Prelude.pure newValue, ..}
instance Property "TargetIdentifier" EnabledBaseline where
  type PropertyType "TargetIdentifier" EnabledBaseline = Value Prelude.Text
  set newValue EnabledBaseline {..}
    = EnabledBaseline {targetIdentifier = newValue, ..}
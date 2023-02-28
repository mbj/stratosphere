module Stratosphere.CodeDeploy.DeploymentGroup.AlarmConfigurationProperty (
        module Exports, AlarmConfigurationProperty(..),
        mkAlarmConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.AlarmProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmConfigurationProperty
  = AlarmConfigurationProperty {alarms :: (Prelude.Maybe [AlarmProperty]),
                                enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                ignorePollAlarmFailure :: (Prelude.Maybe (Value Prelude.Bool))}
mkAlarmConfigurationProperty :: AlarmConfigurationProperty
mkAlarmConfigurationProperty
  = AlarmConfigurationProperty
      {alarms = Prelude.Nothing, enabled = Prelude.Nothing,
       ignorePollAlarmFailure = Prelude.Nothing}
instance ToResourceProperties AlarmConfigurationProperty where
  toResourceProperties AlarmConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.AlarmConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alarms" Prelude.<$> alarms,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "IgnorePollAlarmFailure"
                              Prelude.<$> ignorePollAlarmFailure])}
instance JSON.ToJSON AlarmConfigurationProperty where
  toJSON AlarmConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alarms" Prelude.<$> alarms,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "IgnorePollAlarmFailure"
                 Prelude.<$> ignorePollAlarmFailure]))
instance Property "Alarms" AlarmConfigurationProperty where
  type PropertyType "Alarms" AlarmConfigurationProperty = [AlarmProperty]
  set newValue AlarmConfigurationProperty {..}
    = AlarmConfigurationProperty {alarms = Prelude.pure newValue, ..}
instance Property "Enabled" AlarmConfigurationProperty where
  type PropertyType "Enabled" AlarmConfigurationProperty = Value Prelude.Bool
  set newValue AlarmConfigurationProperty {..}
    = AlarmConfigurationProperty {enabled = Prelude.pure newValue, ..}
instance Property "IgnorePollAlarmFailure" AlarmConfigurationProperty where
  type PropertyType "IgnorePollAlarmFailure" AlarmConfigurationProperty = Value Prelude.Bool
  set newValue AlarmConfigurationProperty {..}
    = AlarmConfigurationProperty
        {ignorePollAlarmFailure = Prelude.pure newValue, ..}
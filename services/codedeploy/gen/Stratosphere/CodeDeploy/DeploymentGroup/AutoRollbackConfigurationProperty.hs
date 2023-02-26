module Stratosphere.CodeDeploy.DeploymentGroup.AutoRollbackConfigurationProperty (
        AutoRollbackConfigurationProperty(..),
        mkAutoRollbackConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoRollbackConfigurationProperty
  = AutoRollbackConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                       events :: (Prelude.Maybe (ValueList Prelude.Text))}
mkAutoRollbackConfigurationProperty ::
  AutoRollbackConfigurationProperty
mkAutoRollbackConfigurationProperty
  = AutoRollbackConfigurationProperty
      {enabled = Prelude.Nothing, events = Prelude.Nothing}
instance ToResourceProperties AutoRollbackConfigurationProperty where
  toResourceProperties AutoRollbackConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.AutoRollbackConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Events" Prelude.<$> events])}
instance JSON.ToJSON AutoRollbackConfigurationProperty where
  toJSON AutoRollbackConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Events" Prelude.<$> events]))
instance Property "Enabled" AutoRollbackConfigurationProperty where
  type PropertyType "Enabled" AutoRollbackConfigurationProperty = Value Prelude.Bool
  set newValue AutoRollbackConfigurationProperty {..}
    = AutoRollbackConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "Events" AutoRollbackConfigurationProperty where
  type PropertyType "Events" AutoRollbackConfigurationProperty = ValueList Prelude.Text
  set newValue AutoRollbackConfigurationProperty {..}
    = AutoRollbackConfigurationProperty
        {events = Prelude.pure newValue, ..}
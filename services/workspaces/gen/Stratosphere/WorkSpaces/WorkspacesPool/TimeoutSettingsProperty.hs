module Stratosphere.WorkSpaces.WorkspacesPool.TimeoutSettingsProperty (
        TimeoutSettingsProperty(..), mkTimeoutSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeoutSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-timeoutsettings.html>
    TimeoutSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-timeoutsettings.html#cfn-workspaces-workspacespool-timeoutsettings-disconnecttimeoutinseconds>
                             disconnectTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-timeoutsettings.html#cfn-workspaces-workspacespool-timeoutsettings-idledisconnecttimeoutinseconds>
                             idleDisconnectTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-timeoutsettings.html#cfn-workspaces-workspacespool-timeoutsettings-maxuserdurationinseconds>
                             maxUserDurationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeoutSettingsProperty :: TimeoutSettingsProperty
mkTimeoutSettingsProperty
  = TimeoutSettingsProperty
      {haddock_workaround_ = (),
       disconnectTimeoutInSeconds = Prelude.Nothing,
       idleDisconnectTimeoutInSeconds = Prelude.Nothing,
       maxUserDurationInSeconds = Prelude.Nothing}
instance ToResourceProperties TimeoutSettingsProperty where
  toResourceProperties TimeoutSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::WorkspacesPool.TimeoutSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DisconnectTimeoutInSeconds"
                              Prelude.<$> disconnectTimeoutInSeconds,
                            (JSON..=) "IdleDisconnectTimeoutInSeconds"
                              Prelude.<$> idleDisconnectTimeoutInSeconds,
                            (JSON..=) "MaxUserDurationInSeconds"
                              Prelude.<$> maxUserDurationInSeconds])}
instance JSON.ToJSON TimeoutSettingsProperty where
  toJSON TimeoutSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DisconnectTimeoutInSeconds"
                 Prelude.<$> disconnectTimeoutInSeconds,
               (JSON..=) "IdleDisconnectTimeoutInSeconds"
                 Prelude.<$> idleDisconnectTimeoutInSeconds,
               (JSON..=) "MaxUserDurationInSeconds"
                 Prelude.<$> maxUserDurationInSeconds]))
instance Property "DisconnectTimeoutInSeconds" TimeoutSettingsProperty where
  type PropertyType "DisconnectTimeoutInSeconds" TimeoutSettingsProperty = Value Prelude.Integer
  set newValue TimeoutSettingsProperty {..}
    = TimeoutSettingsProperty
        {disconnectTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "IdleDisconnectTimeoutInSeconds" TimeoutSettingsProperty where
  type PropertyType "IdleDisconnectTimeoutInSeconds" TimeoutSettingsProperty = Value Prelude.Integer
  set newValue TimeoutSettingsProperty {..}
    = TimeoutSettingsProperty
        {idleDisconnectTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "MaxUserDurationInSeconds" TimeoutSettingsProperty where
  type PropertyType "MaxUserDurationInSeconds" TimeoutSettingsProperty = Value Prelude.Integer
  set newValue TimeoutSettingsProperty {..}
    = TimeoutSettingsProperty
        {maxUserDurationInSeconds = Prelude.pure newValue, ..}
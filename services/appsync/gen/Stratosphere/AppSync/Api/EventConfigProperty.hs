module Stratosphere.AppSync.Api.EventConfigProperty (
        module Exports, EventConfigProperty(..), mkEventConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.Api.AuthModeProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.Api.AuthProviderProperty as Exports
import {-# SOURCE #-} Stratosphere.AppSync.Api.EventLogConfigProperty as Exports
import Stratosphere.ResourceProperties
data EventConfigProperty
  = EventConfigProperty {authProviders :: [AuthProviderProperty],
                         connectionAuthModes :: [AuthModeProperty],
                         defaultPublishAuthModes :: [AuthModeProperty],
                         defaultSubscribeAuthModes :: [AuthModeProperty],
                         logConfig :: (Prelude.Maybe EventLogConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventConfigProperty ::
  [AuthProviderProperty]
  -> [AuthModeProperty]
     -> [AuthModeProperty] -> [AuthModeProperty] -> EventConfigProperty
mkEventConfigProperty
  authProviders
  connectionAuthModes
  defaultPublishAuthModes
  defaultSubscribeAuthModes
  = EventConfigProperty
      {authProviders = authProviders,
       connectionAuthModes = connectionAuthModes,
       defaultPublishAuthModes = defaultPublishAuthModes,
       defaultSubscribeAuthModes = defaultSubscribeAuthModes,
       logConfig = Prelude.Nothing}
instance ToResourceProperties EventConfigProperty where
  toResourceProperties EventConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api.EventConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthProviders" JSON..= authProviders,
                            "ConnectionAuthModes" JSON..= connectionAuthModes,
                            "DefaultPublishAuthModes" JSON..= defaultPublishAuthModes,
                            "DefaultSubscribeAuthModes" JSON..= defaultSubscribeAuthModes]
                           (Prelude.catMaybes [(JSON..=) "LogConfig" Prelude.<$> logConfig]))}
instance JSON.ToJSON EventConfigProperty where
  toJSON EventConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthProviders" JSON..= authProviders,
               "ConnectionAuthModes" JSON..= connectionAuthModes,
               "DefaultPublishAuthModes" JSON..= defaultPublishAuthModes,
               "DefaultSubscribeAuthModes" JSON..= defaultSubscribeAuthModes]
              (Prelude.catMaybes [(JSON..=) "LogConfig" Prelude.<$> logConfig])))
instance Property "AuthProviders" EventConfigProperty where
  type PropertyType "AuthProviders" EventConfigProperty = [AuthProviderProperty]
  set newValue EventConfigProperty {..}
    = EventConfigProperty {authProviders = newValue, ..}
instance Property "ConnectionAuthModes" EventConfigProperty where
  type PropertyType "ConnectionAuthModes" EventConfigProperty = [AuthModeProperty]
  set newValue EventConfigProperty {..}
    = EventConfigProperty {connectionAuthModes = newValue, ..}
instance Property "DefaultPublishAuthModes" EventConfigProperty where
  type PropertyType "DefaultPublishAuthModes" EventConfigProperty = [AuthModeProperty]
  set newValue EventConfigProperty {..}
    = EventConfigProperty {defaultPublishAuthModes = newValue, ..}
instance Property "DefaultSubscribeAuthModes" EventConfigProperty where
  type PropertyType "DefaultSubscribeAuthModes" EventConfigProperty = [AuthModeProperty]
  set newValue EventConfigProperty {..}
    = EventConfigProperty {defaultSubscribeAuthModes = newValue, ..}
instance Property "LogConfig" EventConfigProperty where
  type PropertyType "LogConfig" EventConfigProperty = EventLogConfigProperty
  set newValue EventConfigProperty {..}
    = EventConfigProperty {logConfig = Prelude.pure newValue, ..}
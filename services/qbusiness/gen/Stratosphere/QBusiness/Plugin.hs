module Stratosphere.QBusiness.Plugin (
        module Exports, Plugin(..), mkPlugin
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.Plugin.CustomPluginConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.Plugin.PluginAuthConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Plugin
  = Plugin {applicationId :: (Value Prelude.Text),
            authConfiguration :: PluginAuthConfigurationProperty,
            customPluginConfiguration :: (Prelude.Maybe CustomPluginConfigurationProperty),
            displayName :: (Value Prelude.Text),
            serverUrl :: (Prelude.Maybe (Value Prelude.Text)),
            state :: (Prelude.Maybe (Value Prelude.Text)),
            tags :: (Prelude.Maybe [Tag]),
            type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlugin ::
  Value Prelude.Text
  -> PluginAuthConfigurationProperty
     -> Value Prelude.Text -> Value Prelude.Text -> Plugin
mkPlugin applicationId authConfiguration displayName type'
  = Plugin
      {applicationId = applicationId,
       authConfiguration = authConfiguration, displayName = displayName,
       type' = type', customPluginConfiguration = Prelude.Nothing,
       serverUrl = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Plugin where
  toResourceProperties Plugin {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Plugin", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "AuthConfiguration" JSON..= authConfiguration,
                            "DisplayName" JSON..= displayName, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CustomPluginConfiguration"
                                 Prelude.<$> customPluginConfiguration,
                               (JSON..=) "ServerUrl" Prelude.<$> serverUrl,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Plugin where
  toJSON Plugin {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "AuthConfiguration" JSON..= authConfiguration,
               "DisplayName" JSON..= displayName, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CustomPluginConfiguration"
                    Prelude.<$> customPluginConfiguration,
                  (JSON..=) "ServerUrl" Prelude.<$> serverUrl,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationId" Plugin where
  type PropertyType "ApplicationId" Plugin = Value Prelude.Text
  set newValue Plugin {..} = Plugin {applicationId = newValue, ..}
instance Property "AuthConfiguration" Plugin where
  type PropertyType "AuthConfiguration" Plugin = PluginAuthConfigurationProperty
  set newValue Plugin {..}
    = Plugin {authConfiguration = newValue, ..}
instance Property "CustomPluginConfiguration" Plugin where
  type PropertyType "CustomPluginConfiguration" Plugin = CustomPluginConfigurationProperty
  set newValue Plugin {..}
    = Plugin {customPluginConfiguration = Prelude.pure newValue, ..}
instance Property "DisplayName" Plugin where
  type PropertyType "DisplayName" Plugin = Value Prelude.Text
  set newValue Plugin {..} = Plugin {displayName = newValue, ..}
instance Property "ServerUrl" Plugin where
  type PropertyType "ServerUrl" Plugin = Value Prelude.Text
  set newValue Plugin {..}
    = Plugin {serverUrl = Prelude.pure newValue, ..}
instance Property "State" Plugin where
  type PropertyType "State" Plugin = Value Prelude.Text
  set newValue Plugin {..}
    = Plugin {state = Prelude.pure newValue, ..}
instance Property "Tags" Plugin where
  type PropertyType "Tags" Plugin = [Tag]
  set newValue Plugin {..}
    = Plugin {tags = Prelude.pure newValue, ..}
instance Property "Type" Plugin where
  type PropertyType "Type" Plugin = Value Prelude.Text
  set newValue Plugin {..} = Plugin {type' = newValue, ..}
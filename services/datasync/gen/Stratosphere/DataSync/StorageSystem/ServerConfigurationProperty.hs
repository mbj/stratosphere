module Stratosphere.DataSync.StorageSystem.ServerConfigurationProperty (
        ServerConfigurationProperty(..), mkServerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerConfigurationProperty
  = ServerConfigurationProperty {serverHostname :: (Value Prelude.Text),
                                 serverPort :: (Prelude.Maybe (Value Prelude.Integer))}
mkServerConfigurationProperty ::
  Value Prelude.Text -> ServerConfigurationProperty
mkServerConfigurationProperty serverHostname
  = ServerConfigurationProperty
      {serverHostname = serverHostname, serverPort = Prelude.Nothing}
instance ToResourceProperties ServerConfigurationProperty where
  toResourceProperties ServerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::StorageSystem.ServerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ServerHostname" JSON..= serverHostname]
                           (Prelude.catMaybes
                              [(JSON..=) "ServerPort" Prelude.<$> serverPort]))}
instance JSON.ToJSON ServerConfigurationProperty where
  toJSON ServerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ServerHostname" JSON..= serverHostname]
              (Prelude.catMaybes
                 [(JSON..=) "ServerPort" Prelude.<$> serverPort])))
instance Property "ServerHostname" ServerConfigurationProperty where
  type PropertyType "ServerHostname" ServerConfigurationProperty = Value Prelude.Text
  set newValue ServerConfigurationProperty {..}
    = ServerConfigurationProperty {serverHostname = newValue, ..}
instance Property "ServerPort" ServerConfigurationProperty where
  type PropertyType "ServerPort" ServerConfigurationProperty = Value Prelude.Integer
  set newValue ServerConfigurationProperty {..}
    = ServerConfigurationProperty
        {serverPort = Prelude.pure newValue, ..}
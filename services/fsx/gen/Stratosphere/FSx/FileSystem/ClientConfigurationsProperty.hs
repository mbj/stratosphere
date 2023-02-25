module Stratosphere.FSx.FileSystem.ClientConfigurationsProperty (
        ClientConfigurationsProperty(..), mkClientConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientConfigurationsProperty
  = ClientConfigurationsProperty {clients :: (Prelude.Maybe (Value Prelude.Text)),
                                  options :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkClientConfigurationsProperty :: ClientConfigurationsProperty
mkClientConfigurationsProperty
  = ClientConfigurationsProperty
      {clients = Prelude.Nothing, options = Prelude.Nothing}
instance ToResourceProperties ClientConfigurationsProperty where
  toResourceProperties ClientConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.ClientConfigurations",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Clients" Prelude.<$> clients,
                            (JSON..=) "Options" Prelude.<$> options])}
instance JSON.ToJSON ClientConfigurationsProperty where
  toJSON ClientConfigurationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Clients" Prelude.<$> clients,
               (JSON..=) "Options" Prelude.<$> options]))
instance Property "Clients" ClientConfigurationsProperty where
  type PropertyType "Clients" ClientConfigurationsProperty = Value Prelude.Text
  set newValue ClientConfigurationsProperty {..}
    = ClientConfigurationsProperty
        {clients = Prelude.pure newValue, ..}
instance Property "Options" ClientConfigurationsProperty where
  type PropertyType "Options" ClientConfigurationsProperty = ValueList (Value Prelude.Text)
  set newValue ClientConfigurationsProperty {..}
    = ClientConfigurationsProperty
        {options = Prelude.pure newValue, ..}
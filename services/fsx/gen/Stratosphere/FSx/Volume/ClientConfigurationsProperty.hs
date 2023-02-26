module Stratosphere.FSx.Volume.ClientConfigurationsProperty (
        ClientConfigurationsProperty(..), mkClientConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientConfigurationsProperty
  = ClientConfigurationsProperty {clients :: (Value Prelude.Text),
                                  options :: (ValueList Prelude.Text)}
mkClientConfigurationsProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ClientConfigurationsProperty
mkClientConfigurationsProperty clients options
  = ClientConfigurationsProperty
      {clients = clients, options = options}
instance ToResourceProperties ClientConfigurationsProperty where
  toResourceProperties ClientConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.ClientConfigurations",
         properties = ["Clients" JSON..= clients,
                       "Options" JSON..= options]}
instance JSON.ToJSON ClientConfigurationsProperty where
  toJSON ClientConfigurationsProperty {..}
    = JSON.object
        ["Clients" JSON..= clients, "Options" JSON..= options]
instance Property "Clients" ClientConfigurationsProperty where
  type PropertyType "Clients" ClientConfigurationsProperty = Value Prelude.Text
  set newValue ClientConfigurationsProperty {..}
    = ClientConfigurationsProperty {clients = newValue, ..}
instance Property "Options" ClientConfigurationsProperty where
  type PropertyType "Options" ClientConfigurationsProperty = ValueList Prelude.Text
  set newValue ClientConfigurationsProperty {..}
    = ClientConfigurationsProperty {options = newValue, ..}
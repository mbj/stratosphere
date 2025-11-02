module Stratosphere.FSx.Volume.ClientConfigurationsProperty (
        ClientConfigurationsProperty(..), mkClientConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientConfigurationsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-openzfsconfiguration-nfsexports-clientconfigurations.html>
    ClientConfigurationsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-openzfsconfiguration-nfsexports-clientconfigurations.html#cfn-fsx-volume-openzfsconfiguration-nfsexports-clientconfigurations-clients>
                                  clients :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-openzfsconfiguration-nfsexports-clientconfigurations.html#cfn-fsx-volume-openzfsconfiguration-nfsexports-clientconfigurations-options>
                                  options :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientConfigurationsProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ClientConfigurationsProperty
mkClientConfigurationsProperty clients options
  = ClientConfigurationsProperty
      {haddock_workaround_ = (), clients = clients, options = options}
instance ToResourceProperties ClientConfigurationsProperty where
  toResourceProperties ClientConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.ClientConfigurations",
         supportsTags = Prelude.False,
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
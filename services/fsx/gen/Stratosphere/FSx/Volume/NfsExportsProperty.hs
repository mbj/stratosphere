module Stratosphere.FSx.Volume.NfsExportsProperty (
        module Exports, NfsExportsProperty(..), mkNfsExportsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.Volume.ClientConfigurationsProperty as Exports
import Stratosphere.ResourceProperties
data NfsExportsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-openzfsconfiguration-nfsexports.html>
    NfsExportsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-openzfsconfiguration-nfsexports.html#cfn-fsx-volume-openzfsconfiguration-nfsexports-clientconfigurations>
                        clientConfigurations :: [ClientConfigurationsProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNfsExportsProperty ::
  [ClientConfigurationsProperty] -> NfsExportsProperty
mkNfsExportsProperty clientConfigurations
  = NfsExportsProperty
      {haddock_workaround_ = (),
       clientConfigurations = clientConfigurations}
instance ToResourceProperties NfsExportsProperty where
  toResourceProperties NfsExportsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.NfsExports",
         supportsTags = Prelude.False,
         properties = ["ClientConfigurations" JSON..= clientConfigurations]}
instance JSON.ToJSON NfsExportsProperty where
  toJSON NfsExportsProperty {..}
    = JSON.object ["ClientConfigurations" JSON..= clientConfigurations]
instance Property "ClientConfigurations" NfsExportsProperty where
  type PropertyType "ClientConfigurations" NfsExportsProperty = [ClientConfigurationsProperty]
  set newValue NfsExportsProperty {..}
    = NfsExportsProperty {clientConfigurations = newValue, ..}
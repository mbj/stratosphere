module Stratosphere.FSx.Volume.NfsExportsProperty (
        module Exports, NfsExportsProperty(..), mkNfsExportsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.Volume.ClientConfigurationsProperty as Exports
import Stratosphere.ResourceProperties
data NfsExportsProperty
  = NfsExportsProperty {clientConfigurations :: [ClientConfigurationsProperty]}
mkNfsExportsProperty ::
  [ClientConfigurationsProperty] -> NfsExportsProperty
mkNfsExportsProperty clientConfigurations
  = NfsExportsProperty {clientConfigurations = clientConfigurations}
instance ToResourceProperties NfsExportsProperty where
  toResourceProperties NfsExportsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.NfsExports",
         properties = ["ClientConfigurations" JSON..= clientConfigurations]}
instance JSON.ToJSON NfsExportsProperty where
  toJSON NfsExportsProperty {..}
    = JSON.object ["ClientConfigurations" JSON..= clientConfigurations]
instance Property "ClientConfigurations" NfsExportsProperty where
  type PropertyType "ClientConfigurations" NfsExportsProperty = [ClientConfigurationsProperty]
  set newValue NfsExportsProperty {}
    = NfsExportsProperty {clientConfigurations = newValue, ..}
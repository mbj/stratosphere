module Stratosphere.FSx.FileSystem.NfsExportsProperty (
        module Exports, NfsExportsProperty(..), mkNfsExportsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.ClientConfigurationsProperty as Exports
import Stratosphere.ResourceProperties
data NfsExportsProperty
  = NfsExportsProperty {clientConfigurations :: (Prelude.Maybe [ClientConfigurationsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNfsExportsProperty :: NfsExportsProperty
mkNfsExportsProperty
  = NfsExportsProperty {clientConfigurations = Prelude.Nothing}
instance ToResourceProperties NfsExportsProperty where
  toResourceProperties NfsExportsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.NfsExports",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientConfigurations"
                              Prelude.<$> clientConfigurations])}
instance JSON.ToJSON NfsExportsProperty where
  toJSON NfsExportsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientConfigurations"
                 Prelude.<$> clientConfigurations]))
instance Property "ClientConfigurations" NfsExportsProperty where
  type PropertyType "ClientConfigurations" NfsExportsProperty = [ClientConfigurationsProperty]
  set newValue NfsExportsProperty {}
    = NfsExportsProperty
        {clientConfigurations = Prelude.pure newValue, ..}
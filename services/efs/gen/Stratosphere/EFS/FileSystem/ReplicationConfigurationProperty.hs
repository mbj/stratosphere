module Stratosphere.EFS.FileSystem.ReplicationConfigurationProperty (
        module Exports, ReplicationConfigurationProperty(..),
        mkReplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EFS.FileSystem.ReplicationDestinationProperty as Exports
import Stratosphere.ResourceProperties
data ReplicationConfigurationProperty
  = ReplicationConfigurationProperty {destinations :: (Prelude.Maybe [ReplicationDestinationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationConfigurationProperty ::
  ReplicationConfigurationProperty
mkReplicationConfigurationProperty
  = ReplicationConfigurationProperty {destinations = Prelude.Nothing}
instance ToResourceProperties ReplicationConfigurationProperty where
  toResourceProperties ReplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::FileSystem.ReplicationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destinations" Prelude.<$> destinations])}
instance JSON.ToJSON ReplicationConfigurationProperty where
  toJSON ReplicationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destinations" Prelude.<$> destinations]))
instance Property "Destinations" ReplicationConfigurationProperty where
  type PropertyType "Destinations" ReplicationConfigurationProperty = [ReplicationDestinationProperty]
  set newValue ReplicationConfigurationProperty {}
    = ReplicationConfigurationProperty
        {destinations = Prelude.pure newValue, ..}
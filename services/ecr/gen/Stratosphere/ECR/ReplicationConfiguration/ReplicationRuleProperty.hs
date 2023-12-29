module Stratosphere.ECR.ReplicationConfiguration.ReplicationRuleProperty (
        module Exports, ReplicationRuleProperty(..),
        mkReplicationRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.ReplicationConfiguration.ReplicationDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECR.ReplicationConfiguration.RepositoryFilterProperty as Exports
import Stratosphere.ResourceProperties
data ReplicationRuleProperty
  = ReplicationRuleProperty {destinations :: [ReplicationDestinationProperty],
                             repositoryFilters :: (Prelude.Maybe [RepositoryFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationRuleProperty ::
  [ReplicationDestinationProperty] -> ReplicationRuleProperty
mkReplicationRuleProperty destinations
  = ReplicationRuleProperty
      {destinations = destinations, repositoryFilters = Prelude.Nothing}
instance ToResourceProperties ReplicationRuleProperty where
  toResourceProperties ReplicationRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::ReplicationConfiguration.ReplicationRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Destinations" JSON..= destinations]
                           (Prelude.catMaybes
                              [(JSON..=) "RepositoryFilters" Prelude.<$> repositoryFilters]))}
instance JSON.ToJSON ReplicationRuleProperty where
  toJSON ReplicationRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Destinations" JSON..= destinations]
              (Prelude.catMaybes
                 [(JSON..=) "RepositoryFilters" Prelude.<$> repositoryFilters])))
instance Property "Destinations" ReplicationRuleProperty where
  type PropertyType "Destinations" ReplicationRuleProperty = [ReplicationDestinationProperty]
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty {destinations = newValue, ..}
instance Property "RepositoryFilters" ReplicationRuleProperty where
  type PropertyType "RepositoryFilters" ReplicationRuleProperty = [RepositoryFilterProperty]
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty
        {repositoryFilters = Prelude.pure newValue, ..}
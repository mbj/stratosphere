module Stratosphere.ECS.ClusterCapacityProviderAssociations (
        module Exports, ClusterCapacityProviderAssociations(..),
        mkClusterCapacityProviderAssociations
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.ClusterCapacityProviderAssociations.CapacityProviderStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterCapacityProviderAssociations
  = ClusterCapacityProviderAssociations {capacityProviders :: (ValueList (Value Prelude.Text)),
                                         cluster :: (Value Prelude.Text),
                                         defaultCapacityProviderStrategy :: [CapacityProviderStrategyProperty]}
mkClusterCapacityProviderAssociations ::
  ValueList (Value Prelude.Text)
  -> Value Prelude.Text
     -> [CapacityProviderStrategyProperty]
        -> ClusterCapacityProviderAssociations
mkClusterCapacityProviderAssociations
  capacityProviders
  cluster
  defaultCapacityProviderStrategy
  = ClusterCapacityProviderAssociations
      {capacityProviders = capacityProviders, cluster = cluster,
       defaultCapacityProviderStrategy = defaultCapacityProviderStrategy}
instance ToResourceProperties ClusterCapacityProviderAssociations where
  toResourceProperties ClusterCapacityProviderAssociations {..}
    = ResourceProperties
        {awsType = "AWS::ECS::ClusterCapacityProviderAssociations",
         properties = ["CapacityProviders" JSON..= capacityProviders,
                       "Cluster" JSON..= cluster,
                       "DefaultCapacityProviderStrategy"
                         JSON..= defaultCapacityProviderStrategy]}
instance JSON.ToJSON ClusterCapacityProviderAssociations where
  toJSON ClusterCapacityProviderAssociations {..}
    = JSON.object
        ["CapacityProviders" JSON..= capacityProviders,
         "Cluster" JSON..= cluster,
         "DefaultCapacityProviderStrategy"
           JSON..= defaultCapacityProviderStrategy]
instance Property "CapacityProviders" ClusterCapacityProviderAssociations where
  type PropertyType "CapacityProviders" ClusterCapacityProviderAssociations = ValueList (Value Prelude.Text)
  set newValue ClusterCapacityProviderAssociations {..}
    = ClusterCapacityProviderAssociations
        {capacityProviders = newValue, ..}
instance Property "Cluster" ClusterCapacityProviderAssociations where
  type PropertyType "Cluster" ClusterCapacityProviderAssociations = Value Prelude.Text
  set newValue ClusterCapacityProviderAssociations {..}
    = ClusterCapacityProviderAssociations {cluster = newValue, ..}
instance Property "DefaultCapacityProviderStrategy" ClusterCapacityProviderAssociations where
  type PropertyType "DefaultCapacityProviderStrategy" ClusterCapacityProviderAssociations = [CapacityProviderStrategyProperty]
  set newValue ClusterCapacityProviderAssociations {..}
    = ClusterCapacityProviderAssociations
        {defaultCapacityProviderStrategy = newValue, ..}
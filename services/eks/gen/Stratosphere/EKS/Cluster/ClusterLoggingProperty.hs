module Stratosphere.EKS.Cluster.ClusterLoggingProperty (
        module Exports, ClusterLoggingProperty(..),
        mkClusterLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.LoggingTypeConfigProperty as Exports
import Stratosphere.ResourceProperties
data ClusterLoggingProperty
  = ClusterLoggingProperty {enabledTypes :: (Prelude.Maybe [LoggingTypeConfigProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterLoggingProperty :: ClusterLoggingProperty
mkClusterLoggingProperty
  = ClusterLoggingProperty {enabledTypes = Prelude.Nothing}
instance ToResourceProperties ClusterLoggingProperty where
  toResourceProperties ClusterLoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.ClusterLogging",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnabledTypes" Prelude.<$> enabledTypes])}
instance JSON.ToJSON ClusterLoggingProperty where
  toJSON ClusterLoggingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnabledTypes" Prelude.<$> enabledTypes]))
instance Property "EnabledTypes" ClusterLoggingProperty where
  type PropertyType "EnabledTypes" ClusterLoggingProperty = [LoggingTypeConfigProperty]
  set newValue ClusterLoggingProperty {}
    = ClusterLoggingProperty {enabledTypes = Prelude.pure newValue, ..}
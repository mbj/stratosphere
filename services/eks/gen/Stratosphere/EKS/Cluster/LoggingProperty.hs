module Stratosphere.EKS.Cluster.LoggingProperty (
        module Exports, LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ClusterLoggingProperty as Exports
import Stratosphere.ResourceProperties
data LoggingProperty
  = LoggingProperty {clusterLogging :: (Prelude.Maybe ClusterLoggingProperty)}
mkLoggingProperty :: LoggingProperty
mkLoggingProperty
  = LoggingProperty {clusterLogging = Prelude.Nothing}
instance ToResourceProperties LoggingProperty where
  toResourceProperties LoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.Logging",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClusterLogging" Prelude.<$> clusterLogging])}
instance JSON.ToJSON LoggingProperty where
  toJSON LoggingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClusterLogging" Prelude.<$> clusterLogging]))
instance Property "ClusterLogging" LoggingProperty where
  type PropertyType "ClusterLogging" LoggingProperty = ClusterLoggingProperty
  set newValue LoggingProperty {}
    = LoggingProperty {clusterLogging = Prelude.pure newValue, ..}
module Stratosphere.EKS.Cluster.LoggingProperty (
        module Exports, LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ClusterLoggingProperty as Exports
import Stratosphere.ResourceProperties
data LoggingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-logging.html>
    LoggingProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-logging.html#cfn-eks-cluster-logging-clusterlogging>
                     clusterLogging :: (Prelude.Maybe ClusterLoggingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingProperty :: LoggingProperty
mkLoggingProperty
  = LoggingProperty
      {haddock_workaround_ = (), clusterLogging = Prelude.Nothing}
instance ToResourceProperties LoggingProperty where
  toResourceProperties LoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.Logging",
         supportsTags = Prelude.False,
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
  set newValue LoggingProperty {..}
    = LoggingProperty {clusterLogging = Prelude.pure newValue, ..}
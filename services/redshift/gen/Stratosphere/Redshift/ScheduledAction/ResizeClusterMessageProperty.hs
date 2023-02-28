module Stratosphere.Redshift.ScheduledAction.ResizeClusterMessageProperty (
        ResizeClusterMessageProperty(..), mkResizeClusterMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResizeClusterMessageProperty
  = ResizeClusterMessageProperty {classic :: (Prelude.Maybe (Value Prelude.Bool)),
                                  clusterIdentifier :: (Value Prelude.Text),
                                  clusterType :: (Prelude.Maybe (Value Prelude.Text)),
                                  nodeType :: (Prelude.Maybe (Value Prelude.Text)),
                                  numberOfNodes :: (Prelude.Maybe (Value Prelude.Integer))}
mkResizeClusterMessageProperty ::
  Value Prelude.Text -> ResizeClusterMessageProperty
mkResizeClusterMessageProperty clusterIdentifier
  = ResizeClusterMessageProperty
      {clusterIdentifier = clusterIdentifier, classic = Prelude.Nothing,
       clusterType = Prelude.Nothing, nodeType = Prelude.Nothing,
       numberOfNodes = Prelude.Nothing}
instance ToResourceProperties ResizeClusterMessageProperty where
  toResourceProperties ResizeClusterMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ScheduledAction.ResizeClusterMessage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterIdentifier" JSON..= clusterIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Classic" Prelude.<$> classic,
                               (JSON..=) "ClusterType" Prelude.<$> clusterType,
                               (JSON..=) "NodeType" Prelude.<$> nodeType,
                               (JSON..=) "NumberOfNodes" Prelude.<$> numberOfNodes]))}
instance JSON.ToJSON ResizeClusterMessageProperty where
  toJSON ResizeClusterMessageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterIdentifier" JSON..= clusterIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Classic" Prelude.<$> classic,
                  (JSON..=) "ClusterType" Prelude.<$> clusterType,
                  (JSON..=) "NodeType" Prelude.<$> nodeType,
                  (JSON..=) "NumberOfNodes" Prelude.<$> numberOfNodes])))
instance Property "Classic" ResizeClusterMessageProperty where
  type PropertyType "Classic" ResizeClusterMessageProperty = Value Prelude.Bool
  set newValue ResizeClusterMessageProperty {..}
    = ResizeClusterMessageProperty
        {classic = Prelude.pure newValue, ..}
instance Property "ClusterIdentifier" ResizeClusterMessageProperty where
  type PropertyType "ClusterIdentifier" ResizeClusterMessageProperty = Value Prelude.Text
  set newValue ResizeClusterMessageProperty {..}
    = ResizeClusterMessageProperty {clusterIdentifier = newValue, ..}
instance Property "ClusterType" ResizeClusterMessageProperty where
  type PropertyType "ClusterType" ResizeClusterMessageProperty = Value Prelude.Text
  set newValue ResizeClusterMessageProperty {..}
    = ResizeClusterMessageProperty
        {clusterType = Prelude.pure newValue, ..}
instance Property "NodeType" ResizeClusterMessageProperty where
  type PropertyType "NodeType" ResizeClusterMessageProperty = Value Prelude.Text
  set newValue ResizeClusterMessageProperty {..}
    = ResizeClusterMessageProperty
        {nodeType = Prelude.pure newValue, ..}
instance Property "NumberOfNodes" ResizeClusterMessageProperty where
  type PropertyType "NumberOfNodes" ResizeClusterMessageProperty = Value Prelude.Integer
  set newValue ResizeClusterMessageProperty {..}
    = ResizeClusterMessageProperty
        {numberOfNodes = Prelude.pure newValue, ..}
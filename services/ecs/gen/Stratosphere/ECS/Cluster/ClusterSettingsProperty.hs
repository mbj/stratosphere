module Stratosphere.ECS.Cluster.ClusterSettingsProperty (
        ClusterSettingsProperty(..), mkClusterSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html>
    ClusterSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html#cfn-ecs-cluster-clustersettings-name>
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-clustersettings.html#cfn-ecs-cluster-clustersettings-value>
                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterSettingsProperty :: ClusterSettingsProperty
mkClusterSettingsProperty
  = ClusterSettingsProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ClusterSettingsProperty where
  toResourceProperties ClusterSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster.ClusterSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ClusterSettingsProperty where
  toJSON ClusterSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" ClusterSettingsProperty where
  type PropertyType "Name" ClusterSettingsProperty = Value Prelude.Text
  set newValue ClusterSettingsProperty {..}
    = ClusterSettingsProperty {name = Prelude.pure newValue, ..}
instance Property "Value" ClusterSettingsProperty where
  type PropertyType "Value" ClusterSettingsProperty = Value Prelude.Text
  set newValue ClusterSettingsProperty {..}
    = ClusterSettingsProperty {value = Prelude.pure newValue, ..}
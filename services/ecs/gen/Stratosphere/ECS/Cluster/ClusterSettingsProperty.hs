module Stratosphere.ECS.Cluster.ClusterSettingsProperty (
        ClusterSettingsProperty(..), mkClusterSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterSettingsProperty
  = ClusterSettingsProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                             value :: (Prelude.Maybe (Value Prelude.Text))}
mkClusterSettingsProperty :: ClusterSettingsProperty
mkClusterSettingsProperty
  = ClusterSettingsProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ClusterSettingsProperty where
  toResourceProperties ClusterSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster.ClusterSettings",
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
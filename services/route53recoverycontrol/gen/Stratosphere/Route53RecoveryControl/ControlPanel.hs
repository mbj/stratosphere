module Stratosphere.Route53RecoveryControl.ControlPanel (
        ControlPanel(..), mkControlPanel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ControlPanel
  = ControlPanel {clusterArn :: (Prelude.Maybe (Value Prelude.Text)),
                  name :: (Value Prelude.Text),
                  tags :: (Prelude.Maybe [Tag])}
mkControlPanel :: Value Prelude.Text -> ControlPanel
mkControlPanel name
  = ControlPanel
      {name = name, clusterArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ControlPanel where
  toResourceProperties ControlPanel {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::ControlPanel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ClusterArn" Prelude.<$> clusterArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ControlPanel where
  toJSON ControlPanel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ClusterArn" Prelude.<$> clusterArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ClusterArn" ControlPanel where
  type PropertyType "ClusterArn" ControlPanel = Value Prelude.Text
  set newValue ControlPanel {..}
    = ControlPanel {clusterArn = Prelude.pure newValue, ..}
instance Property "Name" ControlPanel where
  type PropertyType "Name" ControlPanel = Value Prelude.Text
  set newValue ControlPanel {..} = ControlPanel {name = newValue, ..}
instance Property "Tags" ControlPanel where
  type PropertyType "Tags" ControlPanel = [Tag]
  set newValue ControlPanel {..}
    = ControlPanel {tags = Prelude.pure newValue, ..}
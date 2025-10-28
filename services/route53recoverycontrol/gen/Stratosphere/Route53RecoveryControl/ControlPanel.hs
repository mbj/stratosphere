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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoverycontrol-controlpanel.html>
    ControlPanel {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoverycontrol-controlpanel.html#cfn-route53recoverycontrol-controlpanel-clusterarn>
                  clusterArn :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoverycontrol-controlpanel.html#cfn-route53recoverycontrol-controlpanel-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoverycontrol-controlpanel.html#cfn-route53recoverycontrol-controlpanel-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkControlPanel :: Value Prelude.Text -> ControlPanel
mkControlPanel name
  = ControlPanel
      {haddock_workaround_ = (), name = name,
       clusterArn = Prelude.Nothing, tags = Prelude.Nothing}
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
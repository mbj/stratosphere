module Stratosphere.CodeDeploy.DeploymentGroup.TargetGroupInfoProperty (
        TargetGroupInfoProperty(..), mkTargetGroupInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html>
    TargetGroupInfoProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html#cfn-codedeploy-deploymentgroup-targetgroupinfo-name>
                             name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupInfoProperty :: TargetGroupInfoProperty
mkTargetGroupInfoProperty
  = TargetGroupInfoProperty
      {haddock_workaround_ = (), name = Prelude.Nothing}
instance ToResourceProperties TargetGroupInfoProperty where
  toResourceProperties TargetGroupInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.TargetGroupInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON TargetGroupInfoProperty where
  toJSON TargetGroupInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" TargetGroupInfoProperty where
  type PropertyType "Name" TargetGroupInfoProperty = Value Prelude.Text
  set newValue TargetGroupInfoProperty {..}
    = TargetGroupInfoProperty {name = Prelude.pure newValue, ..}
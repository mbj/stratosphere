module Stratosphere.QuickSight.Analysis.ResourcePermissionProperty (
        ResourcePermissionProperty(..), mkResourcePermissionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePermissionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-resourcepermission.html>
    ResourcePermissionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-resourcepermission.html#cfn-quicksight-analysis-resourcepermission-actions>
                                actions :: (ValueList Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-resourcepermission.html#cfn-quicksight-analysis-resourcepermission-principal>
                                principal :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePermissionProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> ResourcePermissionProperty
mkResourcePermissionProperty actions principal
  = ResourcePermissionProperty
      {haddock_workaround_ = (), actions = actions,
       principal = principal}
instance ToResourceProperties ResourcePermissionProperty where
  toResourceProperties ResourcePermissionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ResourcePermission",
         supportsTags = Prelude.False,
         properties = ["Actions" JSON..= actions,
                       "Principal" JSON..= principal]}
instance JSON.ToJSON ResourcePermissionProperty where
  toJSON ResourcePermissionProperty {..}
    = JSON.object
        ["Actions" JSON..= actions, "Principal" JSON..= principal]
instance Property "Actions" ResourcePermissionProperty where
  type PropertyType "Actions" ResourcePermissionProperty = ValueList Prelude.Text
  set newValue ResourcePermissionProperty {..}
    = ResourcePermissionProperty {actions = newValue, ..}
instance Property "Principal" ResourcePermissionProperty where
  type PropertyType "Principal" ResourcePermissionProperty = Value Prelude.Text
  set newValue ResourcePermissionProperty {..}
    = ResourcePermissionProperty {principal = newValue, ..}
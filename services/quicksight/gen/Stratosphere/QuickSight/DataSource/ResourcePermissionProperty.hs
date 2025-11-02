module Stratosphere.QuickSight.DataSource.ResourcePermissionProperty (
        ResourcePermissionProperty(..), mkResourcePermissionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePermissionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-resourcepermission.html>
    ResourcePermissionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-resourcepermission.html#cfn-quicksight-datasource-resourcepermission-actions>
                                actions :: (ValueList Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-resourcepermission.html#cfn-quicksight-datasource-resourcepermission-principal>
                                principal :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-resourcepermission.html#cfn-quicksight-datasource-resourcepermission-resource>
                                resource :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePermissionProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> ResourcePermissionProperty
mkResourcePermissionProperty actions principal
  = ResourcePermissionProperty
      {haddock_workaround_ = (), actions = actions,
       principal = principal, resource = Prelude.Nothing}
instance ToResourceProperties ResourcePermissionProperty where
  toResourceProperties ResourcePermissionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.ResourcePermission",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Principal" JSON..= principal]
                           (Prelude.catMaybes [(JSON..=) "Resource" Prelude.<$> resource]))}
instance JSON.ToJSON ResourcePermissionProperty where
  toJSON ResourcePermissionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Principal" JSON..= principal]
              (Prelude.catMaybes [(JSON..=) "Resource" Prelude.<$> resource])))
instance Property "Actions" ResourcePermissionProperty where
  type PropertyType "Actions" ResourcePermissionProperty = ValueList Prelude.Text
  set newValue ResourcePermissionProperty {..}
    = ResourcePermissionProperty {actions = newValue, ..}
instance Property "Principal" ResourcePermissionProperty where
  type PropertyType "Principal" ResourcePermissionProperty = Value Prelude.Text
  set newValue ResourcePermissionProperty {..}
    = ResourcePermissionProperty {principal = newValue, ..}
instance Property "Resource" ResourcePermissionProperty where
  type PropertyType "Resource" ResourcePermissionProperty = Value Prelude.Text
  set newValue ResourcePermissionProperty {..}
    = ResourcePermissionProperty {resource = Prelude.pure newValue, ..}
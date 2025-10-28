module Stratosphere.Grafana.Workspace.RoleValuesProperty (
        RoleValuesProperty(..), mkRoleValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoleValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-rolevalues.html>
    RoleValuesProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-rolevalues.html#cfn-grafana-workspace-rolevalues-admin>
                        admin :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-grafana-workspace-rolevalues.html#cfn-grafana-workspace-rolevalues-editor>
                        editor :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoleValuesProperty :: RoleValuesProperty
mkRoleValuesProperty
  = RoleValuesProperty
      {haddock_workaround_ = (), admin = Prelude.Nothing,
       editor = Prelude.Nothing}
instance ToResourceProperties RoleValuesProperty where
  toResourceProperties RoleValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Grafana::Workspace.RoleValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Admin" Prelude.<$> admin,
                            (JSON..=) "Editor" Prelude.<$> editor])}
instance JSON.ToJSON RoleValuesProperty where
  toJSON RoleValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Admin" Prelude.<$> admin,
               (JSON..=) "Editor" Prelude.<$> editor]))
instance Property "Admin" RoleValuesProperty where
  type PropertyType "Admin" RoleValuesProperty = ValueList Prelude.Text
  set newValue RoleValuesProperty {..}
    = RoleValuesProperty {admin = Prelude.pure newValue, ..}
instance Property "Editor" RoleValuesProperty where
  type PropertyType "Editor" RoleValuesProperty = ValueList Prelude.Text
  set newValue RoleValuesProperty {..}
    = RoleValuesProperty {editor = Prelude.pure newValue, ..}
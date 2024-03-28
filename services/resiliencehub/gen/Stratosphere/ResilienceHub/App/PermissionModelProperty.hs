module Stratosphere.ResilienceHub.App.PermissionModelProperty (
        PermissionModelProperty(..), mkPermissionModelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PermissionModelProperty
  = PermissionModelProperty {crossAccountRoleArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                             invokerRoleName :: (Prelude.Maybe (Value Prelude.Text)),
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPermissionModelProperty ::
  Value Prelude.Text -> PermissionModelProperty
mkPermissionModelProperty type'
  = PermissionModelProperty
      {type' = type', crossAccountRoleArns = Prelude.Nothing,
       invokerRoleName = Prelude.Nothing}
instance ToResourceProperties PermissionModelProperty where
  toResourceProperties PermissionModelProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::App.PermissionModel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CrossAccountRoleArns" Prelude.<$> crossAccountRoleArns,
                               (JSON..=) "InvokerRoleName" Prelude.<$> invokerRoleName]))}
instance JSON.ToJSON PermissionModelProperty where
  toJSON PermissionModelProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CrossAccountRoleArns" Prelude.<$> crossAccountRoleArns,
                  (JSON..=) "InvokerRoleName" Prelude.<$> invokerRoleName])))
instance Property "CrossAccountRoleArns" PermissionModelProperty where
  type PropertyType "CrossAccountRoleArns" PermissionModelProperty = ValueList Prelude.Text
  set newValue PermissionModelProperty {..}
    = PermissionModelProperty
        {crossAccountRoleArns = Prelude.pure newValue, ..}
instance Property "InvokerRoleName" PermissionModelProperty where
  type PropertyType "InvokerRoleName" PermissionModelProperty = Value Prelude.Text
  set newValue PermissionModelProperty {..}
    = PermissionModelProperty
        {invokerRoleName = Prelude.pure newValue, ..}
instance Property "Type" PermissionModelProperty where
  type PropertyType "Type" PermissionModelProperty = Value Prelude.Text
  set newValue PermissionModelProperty {..}
    = PermissionModelProperty {type' = newValue, ..}
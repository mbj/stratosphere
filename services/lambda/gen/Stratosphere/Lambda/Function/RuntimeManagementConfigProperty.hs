module Stratosphere.Lambda.Function.RuntimeManagementConfigProperty (
        RuntimeManagementConfigProperty(..),
        mkRuntimeManagementConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuntimeManagementConfigProperty
  = RuntimeManagementConfigProperty {runtimeVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     updateRuntimeOn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuntimeManagementConfigProperty ::
  Value Prelude.Text -> RuntimeManagementConfigProperty
mkRuntimeManagementConfigProperty updateRuntimeOn
  = RuntimeManagementConfigProperty
      {updateRuntimeOn = updateRuntimeOn,
       runtimeVersionArn = Prelude.Nothing}
instance ToResourceProperties RuntimeManagementConfigProperty where
  toResourceProperties RuntimeManagementConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.RuntimeManagementConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UpdateRuntimeOn" JSON..= updateRuntimeOn]
                           (Prelude.catMaybes
                              [(JSON..=) "RuntimeVersionArn" Prelude.<$> runtimeVersionArn]))}
instance JSON.ToJSON RuntimeManagementConfigProperty where
  toJSON RuntimeManagementConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UpdateRuntimeOn" JSON..= updateRuntimeOn]
              (Prelude.catMaybes
                 [(JSON..=) "RuntimeVersionArn" Prelude.<$> runtimeVersionArn])))
instance Property "RuntimeVersionArn" RuntimeManagementConfigProperty where
  type PropertyType "RuntimeVersionArn" RuntimeManagementConfigProperty = Value Prelude.Text
  set newValue RuntimeManagementConfigProperty {..}
    = RuntimeManagementConfigProperty
        {runtimeVersionArn = Prelude.pure newValue, ..}
instance Property "UpdateRuntimeOn" RuntimeManagementConfigProperty where
  type PropertyType "UpdateRuntimeOn" RuntimeManagementConfigProperty = Value Prelude.Text
  set newValue RuntimeManagementConfigProperty {..}
    = RuntimeManagementConfigProperty {updateRuntimeOn = newValue, ..}
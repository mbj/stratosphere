module Stratosphere.CloudFormation.ModuleVersion (
        ModuleVersion(..), mkModuleVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModuleVersion
  = ModuleVersion {moduleName :: (Value Prelude.Text),
                   modulePackage :: (Value Prelude.Text)}
mkModuleVersion ::
  Value Prelude.Text -> Value Prelude.Text -> ModuleVersion
mkModuleVersion moduleName modulePackage
  = ModuleVersion
      {moduleName = moduleName, modulePackage = modulePackage}
instance ToResourceProperties ModuleVersion where
  toResourceProperties ModuleVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::ModuleVersion",
         properties = ["ModuleName" JSON..= moduleName,
                       "ModulePackage" JSON..= modulePackage]}
instance JSON.ToJSON ModuleVersion where
  toJSON ModuleVersion {..}
    = JSON.object
        ["ModuleName" JSON..= moduleName,
         "ModulePackage" JSON..= modulePackage]
instance Property "ModuleName" ModuleVersion where
  type PropertyType "ModuleName" ModuleVersion = Value Prelude.Text
  set newValue ModuleVersion {..}
    = ModuleVersion {moduleName = newValue, ..}
instance Property "ModulePackage" ModuleVersion where
  type PropertyType "ModulePackage" ModuleVersion = Value Prelude.Text
  set newValue ModuleVersion {..}
    = ModuleVersion {modulePackage = newValue, ..}
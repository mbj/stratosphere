module Stratosphere.CloudFormation.ModuleVersion (
        ModuleVersion(..), mkModuleVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModuleVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-moduleversion.html>
    ModuleVersion {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-moduleversion.html#cfn-cloudformation-moduleversion-modulename>
                   moduleName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-moduleversion.html#cfn-cloudformation-moduleversion-modulepackage>
                   modulePackage :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModuleVersion ::
  Value Prelude.Text -> Value Prelude.Text -> ModuleVersion
mkModuleVersion moduleName modulePackage
  = ModuleVersion
      {haddock_workaround_ = (), moduleName = moduleName,
       modulePackage = modulePackage}
instance ToResourceProperties ModuleVersion where
  toResourceProperties ModuleVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::ModuleVersion",
         supportsTags = Prelude.False,
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
module Stratosphere.CloudFormation.ModuleDefaultVersion (
        ModuleDefaultVersion(..), mkModuleDefaultVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModuleDefaultVersion
  = ModuleDefaultVersion {arn :: (Prelude.Maybe (Value Prelude.Text)),
                          moduleName :: (Prelude.Maybe (Value Prelude.Text)),
                          versionId :: (Prelude.Maybe (Value Prelude.Text))}
mkModuleDefaultVersion :: ModuleDefaultVersion
mkModuleDefaultVersion
  = ModuleDefaultVersion
      {arn = Prelude.Nothing, moduleName = Prelude.Nothing,
       versionId = Prelude.Nothing}
instance ToResourceProperties ModuleDefaultVersion where
  toResourceProperties ModuleDefaultVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::ModuleDefaultVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "ModuleName" Prelude.<$> moduleName,
                            (JSON..=) "VersionId" Prelude.<$> versionId])}
instance JSON.ToJSON ModuleDefaultVersion where
  toJSON ModuleDefaultVersion {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "ModuleName" Prelude.<$> moduleName,
               (JSON..=) "VersionId" Prelude.<$> versionId]))
instance Property "Arn" ModuleDefaultVersion where
  type PropertyType "Arn" ModuleDefaultVersion = Value Prelude.Text
  set newValue ModuleDefaultVersion {..}
    = ModuleDefaultVersion {arn = Prelude.pure newValue, ..}
instance Property "ModuleName" ModuleDefaultVersion where
  type PropertyType "ModuleName" ModuleDefaultVersion = Value Prelude.Text
  set newValue ModuleDefaultVersion {..}
    = ModuleDefaultVersion {moduleName = Prelude.pure newValue, ..}
instance Property "VersionId" ModuleDefaultVersion where
  type PropertyType "VersionId" ModuleDefaultVersion = Value Prelude.Text
  set newValue ModuleDefaultVersion {..}
    = ModuleDefaultVersion {versionId = Prelude.pure newValue, ..}
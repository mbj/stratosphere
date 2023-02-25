module Stratosphere.CloudFormation.HookDefaultVersion (
        HookDefaultVersion(..), mkHookDefaultVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HookDefaultVersion
  = HookDefaultVersion {typeName :: (Prelude.Maybe (Value Prelude.Text)),
                        typeVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                        versionId :: (Prelude.Maybe (Value Prelude.Text))}
mkHookDefaultVersion :: HookDefaultVersion
mkHookDefaultVersion
  = HookDefaultVersion
      {typeName = Prelude.Nothing, typeVersionArn = Prelude.Nothing,
       versionId = Prelude.Nothing}
instance ToResourceProperties HookDefaultVersion where
  toResourceProperties HookDefaultVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::HookDefaultVersion",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TypeName" Prelude.<$> typeName,
                            (JSON..=) "TypeVersionArn" Prelude.<$> typeVersionArn,
                            (JSON..=) "VersionId" Prelude.<$> versionId])}
instance JSON.ToJSON HookDefaultVersion where
  toJSON HookDefaultVersion {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TypeName" Prelude.<$> typeName,
               (JSON..=) "TypeVersionArn" Prelude.<$> typeVersionArn,
               (JSON..=) "VersionId" Prelude.<$> versionId]))
instance Property "TypeName" HookDefaultVersion where
  type PropertyType "TypeName" HookDefaultVersion = Value Prelude.Text
  set newValue HookDefaultVersion {..}
    = HookDefaultVersion {typeName = Prelude.pure newValue, ..}
instance Property "TypeVersionArn" HookDefaultVersion where
  type PropertyType "TypeVersionArn" HookDefaultVersion = Value Prelude.Text
  set newValue HookDefaultVersion {..}
    = HookDefaultVersion {typeVersionArn = Prelude.pure newValue, ..}
instance Property "VersionId" HookDefaultVersion where
  type PropertyType "VersionId" HookDefaultVersion = Value Prelude.Text
  set newValue HookDefaultVersion {..}
    = HookDefaultVersion {versionId = Prelude.pure newValue, ..}
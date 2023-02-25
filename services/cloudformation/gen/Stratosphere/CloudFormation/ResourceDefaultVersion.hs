module Stratosphere.CloudFormation.ResourceDefaultVersion (
        ResourceDefaultVersion(..), mkResourceDefaultVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceDefaultVersion
  = ResourceDefaultVersion {typeName :: (Prelude.Maybe (Value Prelude.Text)),
                            typeVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                            versionId :: (Prelude.Maybe (Value Prelude.Text))}
mkResourceDefaultVersion :: ResourceDefaultVersion
mkResourceDefaultVersion
  = ResourceDefaultVersion
      {typeName = Prelude.Nothing, typeVersionArn = Prelude.Nothing,
       versionId = Prelude.Nothing}
instance ToResourceProperties ResourceDefaultVersion where
  toResourceProperties ResourceDefaultVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::ResourceDefaultVersion",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TypeName" Prelude.<$> typeName,
                            (JSON..=) "TypeVersionArn" Prelude.<$> typeVersionArn,
                            (JSON..=) "VersionId" Prelude.<$> versionId])}
instance JSON.ToJSON ResourceDefaultVersion where
  toJSON ResourceDefaultVersion {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TypeName" Prelude.<$> typeName,
               (JSON..=) "TypeVersionArn" Prelude.<$> typeVersionArn,
               (JSON..=) "VersionId" Prelude.<$> versionId]))
instance Property "TypeName" ResourceDefaultVersion where
  type PropertyType "TypeName" ResourceDefaultVersion = Value Prelude.Text
  set newValue ResourceDefaultVersion {..}
    = ResourceDefaultVersion {typeName = Prelude.pure newValue, ..}
instance Property "TypeVersionArn" ResourceDefaultVersion where
  type PropertyType "TypeVersionArn" ResourceDefaultVersion = Value Prelude.Text
  set newValue ResourceDefaultVersion {..}
    = ResourceDefaultVersion
        {typeVersionArn = Prelude.pure newValue, ..}
instance Property "VersionId" ResourceDefaultVersion where
  type PropertyType "VersionId" ResourceDefaultVersion = Value Prelude.Text
  set newValue ResourceDefaultVersion {..}
    = ResourceDefaultVersion {versionId = Prelude.pure newValue, ..}
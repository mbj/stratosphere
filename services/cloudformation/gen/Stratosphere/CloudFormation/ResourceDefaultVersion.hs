module Stratosphere.CloudFormation.ResourceDefaultVersion (
        ResourceDefaultVersion(..), mkResourceDefaultVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceDefaultVersion
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-resourcedefaultversion.html>
    ResourceDefaultVersion {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-resourcedefaultversion.html#cfn-cloudformation-resourcedefaultversion-typename>
                            typeName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-resourcedefaultversion.html#cfn-cloudformation-resourcedefaultversion-typeversionarn>
                            typeVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-resourcedefaultversion.html#cfn-cloudformation-resourcedefaultversion-versionid>
                            versionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceDefaultVersion :: ResourceDefaultVersion
mkResourceDefaultVersion
  = ResourceDefaultVersion
      {typeName = Prelude.Nothing, typeVersionArn = Prelude.Nothing,
       versionId = Prelude.Nothing}
instance ToResourceProperties ResourceDefaultVersion where
  toResourceProperties ResourceDefaultVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::ResourceDefaultVersion",
         supportsTags = Prelude.False,
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
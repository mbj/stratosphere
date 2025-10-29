module Stratosphere.GameLift.Build.StorageLocationProperty (
        StorageLocationProperty(..), mkStorageLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageLocationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html>
    StorageLocationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storagelocation-bucket>
                             bucket :: (Value Prelude.Text),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storagelocation-key>
                             key :: (Value Prelude.Text),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storagelocation-objectversion>
                             objectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storagelocation-rolearn>
                             roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageLocationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> StorageLocationProperty
mkStorageLocationProperty bucket key roleArn
  = StorageLocationProperty
      {bucket = bucket, key = key, roleArn = roleArn,
       objectVersion = Prelude.Nothing}
instance ToResourceProperties StorageLocationProperty where
  toResourceProperties StorageLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Build.StorageLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "Key" JSON..= key,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion]))}
instance JSON.ToJSON StorageLocationProperty where
  toJSON StorageLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "Key" JSON..= key,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ObjectVersion" Prelude.<$> objectVersion])))
instance Property "Bucket" StorageLocationProperty where
  type PropertyType "Bucket" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty {bucket = newValue, ..}
instance Property "Key" StorageLocationProperty where
  type PropertyType "Key" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty {key = newValue, ..}
instance Property "ObjectVersion" StorageLocationProperty where
  type PropertyType "ObjectVersion" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty
        {objectVersion = Prelude.pure newValue, ..}
instance Property "RoleArn" StorageLocationProperty where
  type PropertyType "RoleArn" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty {roleArn = newValue, ..}
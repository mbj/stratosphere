module Stratosphere.EFS.AccessPoint.CreationInfoProperty (
        CreationInfoProperty(..), mkCreationInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreationInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-creationinfo.html>
    CreationInfoProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-creationinfo.html#cfn-efs-accesspoint-creationinfo-ownergid>
                          ownerGid :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-creationinfo.html#cfn-efs-accesspoint-creationinfo-owneruid>
                          ownerUid :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-creationinfo.html#cfn-efs-accesspoint-creationinfo-permissions>
                          permissions :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreationInfoProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> CreationInfoProperty
mkCreationInfoProperty ownerGid ownerUid permissions
  = CreationInfoProperty
      {haddock_workaround_ = (), ownerGid = ownerGid,
       ownerUid = ownerUid, permissions = permissions}
instance ToResourceProperties CreationInfoProperty where
  toResourceProperties CreationInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::AccessPoint.CreationInfo",
         supportsTags = Prelude.False,
         properties = ["OwnerGid" JSON..= ownerGid,
                       "OwnerUid" JSON..= ownerUid, "Permissions" JSON..= permissions]}
instance JSON.ToJSON CreationInfoProperty where
  toJSON CreationInfoProperty {..}
    = JSON.object
        ["OwnerGid" JSON..= ownerGid, "OwnerUid" JSON..= ownerUid,
         "Permissions" JSON..= permissions]
instance Property "OwnerGid" CreationInfoProperty where
  type PropertyType "OwnerGid" CreationInfoProperty = Value Prelude.Text
  set newValue CreationInfoProperty {..}
    = CreationInfoProperty {ownerGid = newValue, ..}
instance Property "OwnerUid" CreationInfoProperty where
  type PropertyType "OwnerUid" CreationInfoProperty = Value Prelude.Text
  set newValue CreationInfoProperty {..}
    = CreationInfoProperty {ownerUid = newValue, ..}
instance Property "Permissions" CreationInfoProperty where
  type PropertyType "Permissions" CreationInfoProperty = Value Prelude.Text
  set newValue CreationInfoProperty {..}
    = CreationInfoProperty {permissions = newValue, ..}
module Stratosphere.Connect.Instance (
        module Exports, Instance(..), mkInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Instance.AttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Instance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instance.html>
    Instance {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instance.html#cfn-connect-instance-attributes>
              attributes :: AttributesProperty,
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instance.html#cfn-connect-instance-directoryid>
              directoryId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instance.html#cfn-connect-instance-identitymanagementtype>
              identityManagementType :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instance.html#cfn-connect-instance-instancealias>
              instanceAlias :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instance.html#cfn-connect-instance-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstance :: AttributesProperty -> Value Prelude.Text -> Instance
mkInstance attributes identityManagementType
  = Instance
      {haddock_workaround_ = (), attributes = attributes,
       identityManagementType = identityManagementType,
       directoryId = Prelude.Nothing, instanceAlias = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Instance where
  toResourceProperties Instance {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Instance", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attributes" JSON..= attributes,
                            "IdentityManagementType" JSON..= identityManagementType]
                           (Prelude.catMaybes
                              [(JSON..=) "DirectoryId" Prelude.<$> directoryId,
                               (JSON..=) "InstanceAlias" Prelude.<$> instanceAlias,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Instance where
  toJSON Instance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attributes" JSON..= attributes,
               "IdentityManagementType" JSON..= identityManagementType]
              (Prelude.catMaybes
                 [(JSON..=) "DirectoryId" Prelude.<$> directoryId,
                  (JSON..=) "InstanceAlias" Prelude.<$> instanceAlias,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Attributes" Instance where
  type PropertyType "Attributes" Instance = AttributesProperty
  set newValue Instance {..} = Instance {attributes = newValue, ..}
instance Property "DirectoryId" Instance where
  type PropertyType "DirectoryId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {directoryId = Prelude.pure newValue, ..}
instance Property "IdentityManagementType" Instance where
  type PropertyType "IdentityManagementType" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {identityManagementType = newValue, ..}
instance Property "InstanceAlias" Instance where
  type PropertyType "InstanceAlias" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {instanceAlias = Prelude.pure newValue, ..}
instance Property "Tags" Instance where
  type PropertyType "Tags" Instance = [Tag]
  set newValue Instance {..}
    = Instance {tags = Prelude.pure newValue, ..}
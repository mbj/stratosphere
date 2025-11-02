module Stratosphere.RAM.Permission (
        Permission(..), mkPermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Permission
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-permission.html>
    Permission {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-permission.html#cfn-ram-permission-name>
                name :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-permission.html#cfn-ram-permission-policytemplate>
                policyTemplate :: JSON.Object,
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-permission.html#cfn-ram-permission-resourcetype>
                resourceType :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-permission.html#cfn-ram-permission-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPermission ::
  Value Prelude.Text
  -> JSON.Object -> Value Prelude.Text -> Permission
mkPermission name policyTemplate resourceType
  = Permission
      {haddock_workaround_ = (), name = name,
       policyTemplate = policyTemplate, resourceType = resourceType,
       tags = Prelude.Nothing}
instance ToResourceProperties Permission where
  toResourceProperties Permission {..}
    = ResourceProperties
        {awsType = "AWS::RAM::Permission", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "PolicyTemplate" JSON..= policyTemplate,
                            "ResourceType" JSON..= resourceType]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Permission where
  toJSON Permission {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "PolicyTemplate" JSON..= policyTemplate,
               "ResourceType" JSON..= resourceType]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Permission where
  type PropertyType "Name" Permission = Value Prelude.Text
  set newValue Permission {..} = Permission {name = newValue, ..}
instance Property "PolicyTemplate" Permission where
  type PropertyType "PolicyTemplate" Permission = JSON.Object
  set newValue Permission {..}
    = Permission {policyTemplate = newValue, ..}
instance Property "ResourceType" Permission where
  type PropertyType "ResourceType" Permission = Value Prelude.Text
  set newValue Permission {..}
    = Permission {resourceType = newValue, ..}
instance Property "Tags" Permission where
  type PropertyType "Tags" Permission = [Tag]
  set newValue Permission {..}
    = Permission {tags = Prelude.pure newValue, ..}
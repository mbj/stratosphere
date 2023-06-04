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
  = Permission {name :: (Value Prelude.Text),
                policyTemplate :: JSON.Object,
                resourceType :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
mkPermission ::
  Value Prelude.Text
  -> JSON.Object -> Value Prelude.Text -> Permission
mkPermission name policyTemplate resourceType
  = Permission
      {name = name, policyTemplate = policyTemplate,
       resourceType = resourceType, tags = Prelude.Nothing}
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
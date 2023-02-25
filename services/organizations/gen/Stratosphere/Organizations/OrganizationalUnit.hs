module Stratosphere.Organizations.OrganizationalUnit (
        OrganizationalUnit(..), mkOrganizationalUnit
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OrganizationalUnit
  = OrganizationalUnit {name :: (Value Prelude.Text),
                        parentId :: (Value Prelude.Text),
                        tags :: (Prelude.Maybe [Tag])}
mkOrganizationalUnit ::
  Value Prelude.Text -> Value Prelude.Text -> OrganizationalUnit
mkOrganizationalUnit name parentId
  = OrganizationalUnit
      {name = name, parentId = parentId, tags = Prelude.Nothing}
instance ToResourceProperties OrganizationalUnit where
  toResourceProperties OrganizationalUnit {..}
    = ResourceProperties
        {awsType = "AWS::Organizations::OrganizationalUnit",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "ParentId" JSON..= parentId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON OrganizationalUnit where
  toJSON OrganizationalUnit {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "ParentId" JSON..= parentId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" OrganizationalUnit where
  type PropertyType "Name" OrganizationalUnit = Value Prelude.Text
  set newValue OrganizationalUnit {..}
    = OrganizationalUnit {name = newValue, ..}
instance Property "ParentId" OrganizationalUnit where
  type PropertyType "ParentId" OrganizationalUnit = Value Prelude.Text
  set newValue OrganizationalUnit {..}
    = OrganizationalUnit {parentId = newValue, ..}
instance Property "Tags" OrganizationalUnit where
  type PropertyType "Tags" OrganizationalUnit = [Tag]
  set newValue OrganizationalUnit {..}
    = OrganizationalUnit {tags = Prelude.pure newValue, ..}
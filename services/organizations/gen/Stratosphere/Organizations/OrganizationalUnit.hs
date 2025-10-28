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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-organizationalunit.html>
    OrganizationalUnit {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-organizationalunit.html#cfn-organizations-organizationalunit-name>
                        name :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-organizationalunit.html#cfn-organizations-organizationalunit-parentid>
                        parentId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-organizationalunit.html#cfn-organizations-organizationalunit-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationalUnit ::
  Value Prelude.Text -> Value Prelude.Text -> OrganizationalUnit
mkOrganizationalUnit name parentId
  = OrganizationalUnit
      {haddock_workaround_ = (), name = name, parentId = parentId,
       tags = Prelude.Nothing}
instance ToResourceProperties OrganizationalUnit where
  toResourceProperties OrganizationalUnit {..}
    = ResourceProperties
        {awsType = "AWS::Organizations::OrganizationalUnit",
         supportsTags = Prelude.True,
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
module Stratosphere.FMS.ResourceSet (
        ResourceSet(..), mkResourceSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResourceSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-resourceset.html>
    ResourceSet {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-resourceset.html#cfn-fms-resourceset-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-resourceset.html#cfn-fms-resourceset-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-resourceset.html#cfn-fms-resourceset-resourcetypelist>
                 resourceTypeList :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-resourceset.html#cfn-fms-resourceset-resources>
                 resources :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fms-resourceset.html#cfn-fms-resourceset-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceSet ::
  Value Prelude.Text -> ValueList Prelude.Text -> ResourceSet
mkResourceSet name resourceTypeList
  = ResourceSet
      {haddock_workaround_ = (), name = name,
       resourceTypeList = resourceTypeList, description = Prelude.Nothing,
       resources = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ResourceSet where
  toResourceProperties ResourceSet {..}
    = ResourceProperties
        {awsType = "AWS::FMS::ResourceSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "ResourceTypeList" JSON..= resourceTypeList]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Resources" Prelude.<$> resources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResourceSet where
  toJSON ResourceSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "ResourceTypeList" JSON..= resourceTypeList]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Resources" Prelude.<$> resources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" ResourceSet where
  type PropertyType "Description" ResourceSet = Value Prelude.Text
  set newValue ResourceSet {..}
    = ResourceSet {description = Prelude.pure newValue, ..}
instance Property "Name" ResourceSet where
  type PropertyType "Name" ResourceSet = Value Prelude.Text
  set newValue ResourceSet {..} = ResourceSet {name = newValue, ..}
instance Property "ResourceTypeList" ResourceSet where
  type PropertyType "ResourceTypeList" ResourceSet = ValueList Prelude.Text
  set newValue ResourceSet {..}
    = ResourceSet {resourceTypeList = newValue, ..}
instance Property "Resources" ResourceSet where
  type PropertyType "Resources" ResourceSet = ValueList Prelude.Text
  set newValue ResourceSet {..}
    = ResourceSet {resources = Prelude.pure newValue, ..}
instance Property "Tags" ResourceSet where
  type PropertyType "Tags" ResourceSet = [Tag]
  set newValue ResourceSet {..}
    = ResourceSet {tags = Prelude.pure newValue, ..}
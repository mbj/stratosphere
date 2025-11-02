module Stratosphere.S3.StorageLensGroup (
        module Exports, StorageLensGroup(..), mkStorageLensGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.FilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StorageLensGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-storagelensgroup.html>
    StorageLensGroup {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-storagelensgroup.html#cfn-s3-storagelensgroup-filter>
                      filter :: FilterProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-storagelensgroup.html#cfn-s3-storagelensgroup-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-storagelensgroup.html#cfn-s3-storagelensgroup-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageLensGroup ::
  FilterProperty -> Value Prelude.Text -> StorageLensGroup
mkStorageLensGroup filter name
  = StorageLensGroup
      {haddock_workaround_ = (), filter = filter, name = name,
       tags = Prelude.Nothing}
instance ToResourceProperties StorageLensGroup where
  toResourceProperties StorageLensGroup {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLensGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Filter" JSON..= filter, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StorageLensGroup where
  toJSON StorageLensGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Filter" JSON..= filter, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Filter" StorageLensGroup where
  type PropertyType "Filter" StorageLensGroup = FilterProperty
  set newValue StorageLensGroup {..}
    = StorageLensGroup {filter = newValue, ..}
instance Property "Name" StorageLensGroup where
  type PropertyType "Name" StorageLensGroup = Value Prelude.Text
  set newValue StorageLensGroup {..}
    = StorageLensGroup {name = newValue, ..}
instance Property "Tags" StorageLensGroup where
  type PropertyType "Tags" StorageLensGroup = [Tag]
  set newValue StorageLensGroup {..}
    = StorageLensGroup {tags = Prelude.pure newValue, ..}
module Stratosphere.LakeFormation.Tag (
        Tag(..), mkTag
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Tag
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-tag.html>
    Tag {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-tag.html#cfn-lakeformation-tag-catalogid>
         catalogId :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-tag.html#cfn-lakeformation-tag-tagkey>
         tagKey :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-tag.html#cfn-lakeformation-tag-tagvalues>
         tagValues :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTag :: Value Prelude.Text -> ValueList Prelude.Text -> Tag
mkTag tagKey tagValues
  = Tag
      {haddock_workaround_ = (), tagKey = tagKey, tagValues = tagValues,
       catalogId = Prelude.Nothing}
instance ToResourceProperties Tag where
  toResourceProperties Tag {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Tag", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TagKey" JSON..= tagKey, "TagValues" JSON..= tagValues]
                           (Prelude.catMaybes [(JSON..=) "CatalogId" Prelude.<$> catalogId]))}
instance JSON.ToJSON Tag where
  toJSON Tag {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TagKey" JSON..= tagKey, "TagValues" JSON..= tagValues]
              (Prelude.catMaybes [(JSON..=) "CatalogId" Prelude.<$> catalogId])))
instance Property "CatalogId" Tag where
  type PropertyType "CatalogId" Tag = Value Prelude.Text
  set newValue Tag {..} = Tag {catalogId = Prelude.pure newValue, ..}
instance Property "TagKey" Tag where
  type PropertyType "TagKey" Tag = Value Prelude.Text
  set newValue Tag {..} = Tag {tagKey = newValue, ..}
instance Property "TagValues" Tag where
  type PropertyType "TagValues" Tag = ValueList Prelude.Text
  set newValue Tag {..} = Tag {tagValues = newValue, ..}
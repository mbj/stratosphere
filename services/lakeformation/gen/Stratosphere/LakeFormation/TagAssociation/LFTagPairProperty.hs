module Stratosphere.LakeFormation.TagAssociation.LFTagPairProperty (
        LFTagPairProperty(..), mkLFTagPairProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LFTagPairProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-lftagpair.html>
    LFTagPairProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-lftagpair.html#cfn-lakeformation-tagassociation-lftagpair-catalogid>
                       catalogId :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-lftagpair.html#cfn-lakeformation-tagassociation-lftagpair-tagkey>
                       tagKey :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-lftagpair.html#cfn-lakeformation-tagassociation-lftagpair-tagvalues>
                       tagValues :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLFTagPairProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> LFTagPairProperty
mkLFTagPairProperty catalogId tagKey tagValues
  = LFTagPairProperty
      {haddock_workaround_ = (), catalogId = catalogId, tagKey = tagKey,
       tagValues = tagValues}
instance ToResourceProperties LFTagPairProperty where
  toResourceProperties LFTagPairProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::TagAssociation.LFTagPair",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "TagKey" JSON..= tagKey, "TagValues" JSON..= tagValues]}
instance JSON.ToJSON LFTagPairProperty where
  toJSON LFTagPairProperty {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId, "TagKey" JSON..= tagKey,
         "TagValues" JSON..= tagValues]
instance Property "CatalogId" LFTagPairProperty where
  type PropertyType "CatalogId" LFTagPairProperty = Value Prelude.Text
  set newValue LFTagPairProperty {..}
    = LFTagPairProperty {catalogId = newValue, ..}
instance Property "TagKey" LFTagPairProperty where
  type PropertyType "TagKey" LFTagPairProperty = Value Prelude.Text
  set newValue LFTagPairProperty {..}
    = LFTagPairProperty {tagKey = newValue, ..}
instance Property "TagValues" LFTagPairProperty where
  type PropertyType "TagValues" LFTagPairProperty = ValueList Prelude.Text
  set newValue LFTagPairProperty {..}
    = LFTagPairProperty {tagValues = newValue, ..}
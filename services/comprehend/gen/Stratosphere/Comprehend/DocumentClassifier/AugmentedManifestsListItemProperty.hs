module Stratosphere.Comprehend.DocumentClassifier.AugmentedManifestsListItemProperty (
        AugmentedManifestsListItemProperty(..),
        mkAugmentedManifestsListItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AugmentedManifestsListItemProperty
  = AugmentedManifestsListItemProperty {attributeNames :: (ValueList Prelude.Text),
                                        s3Uri :: (Value Prelude.Text),
                                        split :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAugmentedManifestsListItemProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> AugmentedManifestsListItemProperty
mkAugmentedManifestsListItemProperty attributeNames s3Uri
  = AugmentedManifestsListItemProperty
      {attributeNames = attributeNames, s3Uri = s3Uri,
       split = Prelude.Nothing}
instance ToResourceProperties AugmentedManifestsListItemProperty where
  toResourceProperties AugmentedManifestsListItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::DocumentClassifier.AugmentedManifestsListItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AttributeNames" JSON..= attributeNames, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes [(JSON..=) "Split" Prelude.<$> split]))}
instance JSON.ToJSON AugmentedManifestsListItemProperty where
  toJSON AugmentedManifestsListItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AttributeNames" JSON..= attributeNames, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes [(JSON..=) "Split" Prelude.<$> split])))
instance Property "AttributeNames" AugmentedManifestsListItemProperty where
  type PropertyType "AttributeNames" AugmentedManifestsListItemProperty = ValueList Prelude.Text
  set newValue AugmentedManifestsListItemProperty {..}
    = AugmentedManifestsListItemProperty
        {attributeNames = newValue, ..}
instance Property "S3Uri" AugmentedManifestsListItemProperty where
  type PropertyType "S3Uri" AugmentedManifestsListItemProperty = Value Prelude.Text
  set newValue AugmentedManifestsListItemProperty {..}
    = AugmentedManifestsListItemProperty {s3Uri = newValue, ..}
instance Property "Split" AugmentedManifestsListItemProperty where
  type PropertyType "Split" AugmentedManifestsListItemProperty = Value Prelude.Text
  set newValue AugmentedManifestsListItemProperty {..}
    = AugmentedManifestsListItemProperty
        {split = Prelude.pure newValue, ..}
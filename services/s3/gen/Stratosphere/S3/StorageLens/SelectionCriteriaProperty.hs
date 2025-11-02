module Stratosphere.S3.StorageLens.SelectionCriteriaProperty (
        SelectionCriteriaProperty(..), mkSelectionCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelectionCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-selectioncriteria.html>
    SelectionCriteriaProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-selectioncriteria.html#cfn-s3-storagelens-selectioncriteria-delimiter>
                               delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-selectioncriteria.html#cfn-s3-storagelens-selectioncriteria-maxdepth>
                               maxDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-selectioncriteria.html#cfn-s3-storagelens-selectioncriteria-minstoragebytespercentage>
                               minStorageBytesPercentage :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelectionCriteriaProperty :: SelectionCriteriaProperty
mkSelectionCriteriaProperty
  = SelectionCriteriaProperty
      {haddock_workaround_ = (), delimiter = Prelude.Nothing,
       maxDepth = Prelude.Nothing,
       minStorageBytesPercentage = Prelude.Nothing}
instance ToResourceProperties SelectionCriteriaProperty where
  toResourceProperties SelectionCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.SelectionCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "MaxDepth" Prelude.<$> maxDepth,
                            (JSON..=) "MinStorageBytesPercentage"
                              Prelude.<$> minStorageBytesPercentage])}
instance JSON.ToJSON SelectionCriteriaProperty where
  toJSON SelectionCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "MaxDepth" Prelude.<$> maxDepth,
               (JSON..=) "MinStorageBytesPercentage"
                 Prelude.<$> minStorageBytesPercentage]))
instance Property "Delimiter" SelectionCriteriaProperty where
  type PropertyType "Delimiter" SelectionCriteriaProperty = Value Prelude.Text
  set newValue SelectionCriteriaProperty {..}
    = SelectionCriteriaProperty {delimiter = Prelude.pure newValue, ..}
instance Property "MaxDepth" SelectionCriteriaProperty where
  type PropertyType "MaxDepth" SelectionCriteriaProperty = Value Prelude.Integer
  set newValue SelectionCriteriaProperty {..}
    = SelectionCriteriaProperty {maxDepth = Prelude.pure newValue, ..}
instance Property "MinStorageBytesPercentage" SelectionCriteriaProperty where
  type PropertyType "MinStorageBytesPercentage" SelectionCriteriaProperty = Value Prelude.Double
  set newValue SelectionCriteriaProperty {..}
    = SelectionCriteriaProperty
        {minStorageBytesPercentage = Prelude.pure newValue, ..}
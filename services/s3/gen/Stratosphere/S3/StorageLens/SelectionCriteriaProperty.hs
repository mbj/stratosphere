module Stratosphere.S3.StorageLens.SelectionCriteriaProperty (
        SelectionCriteriaProperty(..), mkSelectionCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelectionCriteriaProperty
  = SelectionCriteriaProperty {delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                               maxDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                               minStorageBytesPercentage :: (Prelude.Maybe (Value Prelude.Double))}
mkSelectionCriteriaProperty :: SelectionCriteriaProperty
mkSelectionCriteriaProperty
  = SelectionCriteriaProperty
      {delimiter = Prelude.Nothing, maxDepth = Prelude.Nothing,
       minStorageBytesPercentage = Prelude.Nothing}
instance ToResourceProperties SelectionCriteriaProperty where
  toResourceProperties SelectionCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.SelectionCriteria",
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
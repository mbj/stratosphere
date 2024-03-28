module Stratosphere.S3.StorageLens.StorageLensGroupSelectionCriteriaProperty (
        StorageLensGroupSelectionCriteriaProperty(..),
        mkStorageLensGroupSelectionCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageLensGroupSelectionCriteriaProperty
  = StorageLensGroupSelectionCriteriaProperty {exclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                                               include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageLensGroupSelectionCriteriaProperty ::
  StorageLensGroupSelectionCriteriaProperty
mkStorageLensGroupSelectionCriteriaProperty
  = StorageLensGroupSelectionCriteriaProperty
      {exclude = Prelude.Nothing, include = Prelude.Nothing}
instance ToResourceProperties StorageLensGroupSelectionCriteriaProperty where
  toResourceProperties StorageLensGroupSelectionCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.StorageLensGroupSelectionCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclude" Prelude.<$> exclude,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON StorageLensGroupSelectionCriteriaProperty where
  toJSON StorageLensGroupSelectionCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclude" Prelude.<$> exclude,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Exclude" StorageLensGroupSelectionCriteriaProperty where
  type PropertyType "Exclude" StorageLensGroupSelectionCriteriaProperty = ValueList Prelude.Text
  set newValue StorageLensGroupSelectionCriteriaProperty {..}
    = StorageLensGroupSelectionCriteriaProperty
        {exclude = Prelude.pure newValue, ..}
instance Property "Include" StorageLensGroupSelectionCriteriaProperty where
  type PropertyType "Include" StorageLensGroupSelectionCriteriaProperty = ValueList Prelude.Text
  set newValue StorageLensGroupSelectionCriteriaProperty {..}
    = StorageLensGroupSelectionCriteriaProperty
        {include = Prelude.pure newValue, ..}
module Stratosphere.S3.StorageLens.StorageLensGroupLevelProperty (
        module Exports, StorageLensGroupLevelProperty(..),
        mkStorageLensGroupLevelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.StorageLensGroupSelectionCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data StorageLensGroupLevelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensgrouplevel.html>
    StorageLensGroupLevelProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensgrouplevel.html#cfn-s3-storagelens-storagelensgrouplevel-storagelensgroupselectioncriteria>
                                   storageLensGroupSelectionCriteria :: (Prelude.Maybe StorageLensGroupSelectionCriteriaProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageLensGroupLevelProperty :: StorageLensGroupLevelProperty
mkStorageLensGroupLevelProperty
  = StorageLensGroupLevelProperty
      {haddock_workaround_ = (),
       storageLensGroupSelectionCriteria = Prelude.Nothing}
instance ToResourceProperties StorageLensGroupLevelProperty where
  toResourceProperties StorageLensGroupLevelProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.StorageLensGroupLevel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StorageLensGroupSelectionCriteria"
                              Prelude.<$> storageLensGroupSelectionCriteria])}
instance JSON.ToJSON StorageLensGroupLevelProperty where
  toJSON StorageLensGroupLevelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StorageLensGroupSelectionCriteria"
                 Prelude.<$> storageLensGroupSelectionCriteria]))
instance Property "StorageLensGroupSelectionCriteria" StorageLensGroupLevelProperty where
  type PropertyType "StorageLensGroupSelectionCriteria" StorageLensGroupLevelProperty = StorageLensGroupSelectionCriteriaProperty
  set newValue StorageLensGroupLevelProperty {..}
    = StorageLensGroupLevelProperty
        {storageLensGroupSelectionCriteria = Prelude.pure newValue, ..}
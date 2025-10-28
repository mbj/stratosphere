module Stratosphere.S3.StorageLens.PrefixLevelStorageMetricsProperty (
        module Exports, PrefixLevelStorageMetricsProperty(..),
        mkPrefixLevelStorageMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.SelectionCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrefixLevelStorageMetricsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevelstoragemetrics.html>
    PrefixLevelStorageMetricsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevelstoragemetrics.html#cfn-s3-storagelens-prefixlevelstoragemetrics-isenabled>
                                       isEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevelstoragemetrics.html#cfn-s3-storagelens-prefixlevelstoragemetrics-selectioncriteria>
                                       selectionCriteria :: (Prelude.Maybe SelectionCriteriaProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrefixLevelStorageMetricsProperty ::
  PrefixLevelStorageMetricsProperty
mkPrefixLevelStorageMetricsProperty
  = PrefixLevelStorageMetricsProperty
      {haddock_workaround_ = (), isEnabled = Prelude.Nothing,
       selectionCriteria = Prelude.Nothing}
instance ToResourceProperties PrefixLevelStorageMetricsProperty where
  toResourceProperties PrefixLevelStorageMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.PrefixLevelStorageMetrics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsEnabled" Prelude.<$> isEnabled,
                            (JSON..=) "SelectionCriteria" Prelude.<$> selectionCriteria])}
instance JSON.ToJSON PrefixLevelStorageMetricsProperty where
  toJSON PrefixLevelStorageMetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsEnabled" Prelude.<$> isEnabled,
               (JSON..=) "SelectionCriteria" Prelude.<$> selectionCriteria]))
instance Property "IsEnabled" PrefixLevelStorageMetricsProperty where
  type PropertyType "IsEnabled" PrefixLevelStorageMetricsProperty = Value Prelude.Bool
  set newValue PrefixLevelStorageMetricsProperty {..}
    = PrefixLevelStorageMetricsProperty
        {isEnabled = Prelude.pure newValue, ..}
instance Property "SelectionCriteria" PrefixLevelStorageMetricsProperty where
  type PropertyType "SelectionCriteria" PrefixLevelStorageMetricsProperty = SelectionCriteriaProperty
  set newValue PrefixLevelStorageMetricsProperty {..}
    = PrefixLevelStorageMetricsProperty
        {selectionCriteria = Prelude.pure newValue, ..}
module Stratosphere.QuickSight.Dashboard.WordCloudSortConfigurationProperty (
        module Exports, WordCloudSortConfigurationProperty(..),
        mkWordCloudSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WordCloudSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudsortconfiguration.html>
    WordCloudSortConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudsortconfiguration.html#cfn-quicksight-dashboard-wordcloudsortconfiguration-categoryitemslimit>
                                        categoryItemsLimit :: (Prelude.Maybe ItemsLimitConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudsortconfiguration.html#cfn-quicksight-dashboard-wordcloudsortconfiguration-categorysort>
                                        categorySort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWordCloudSortConfigurationProperty ::
  WordCloudSortConfigurationProperty
mkWordCloudSortConfigurationProperty
  = WordCloudSortConfigurationProperty
      {haddock_workaround_ = (), categoryItemsLimit = Prelude.Nothing,
       categorySort = Prelude.Nothing}
instance ToResourceProperties WordCloudSortConfigurationProperty where
  toResourceProperties WordCloudSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WordCloudSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
                            (JSON..=) "CategorySort" Prelude.<$> categorySort])}
instance JSON.ToJSON WordCloudSortConfigurationProperty where
  toJSON WordCloudSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryItemsLimit" Prelude.<$> categoryItemsLimit,
               (JSON..=) "CategorySort" Prelude.<$> categorySort]))
instance Property "CategoryItemsLimit" WordCloudSortConfigurationProperty where
  type PropertyType "CategoryItemsLimit" WordCloudSortConfigurationProperty = ItemsLimitConfigurationProperty
  set newValue WordCloudSortConfigurationProperty {..}
    = WordCloudSortConfigurationProperty
        {categoryItemsLimit = Prelude.pure newValue, ..}
instance Property "CategorySort" WordCloudSortConfigurationProperty where
  type PropertyType "CategorySort" WordCloudSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue WordCloudSortConfigurationProperty {..}
    = WordCloudSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
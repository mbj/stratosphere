module Stratosphere.QuickSight.Dashboard.FilledMapSortConfigurationProperty (
        module Exports, FilledMapSortConfigurationProperty(..),
        mkFilledMapSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FieldSortOptionsProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapSortConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapsortconfiguration.html>
    FilledMapSortConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapsortconfiguration.html#cfn-quicksight-dashboard-filledmapsortconfiguration-categorysort>
                                        categorySort :: (Prelude.Maybe [FieldSortOptionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapSortConfigurationProperty ::
  FilledMapSortConfigurationProperty
mkFilledMapSortConfigurationProperty
  = FilledMapSortConfigurationProperty
      {haddock_workaround_ = (), categorySort = Prelude.Nothing}
instance ToResourceProperties FilledMapSortConfigurationProperty where
  toResourceProperties FilledMapSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilledMapSortConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategorySort" Prelude.<$> categorySort])}
instance JSON.ToJSON FilledMapSortConfigurationProperty where
  toJSON FilledMapSortConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategorySort" Prelude.<$> categorySort]))
instance Property "CategorySort" FilledMapSortConfigurationProperty where
  type PropertyType "CategorySort" FilledMapSortConfigurationProperty = [FieldSortOptionsProperty]
  set newValue FilledMapSortConfigurationProperty {..}
    = FilledMapSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
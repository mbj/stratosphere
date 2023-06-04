module Stratosphere.QuickSight.Analysis.FilledMapSortConfigurationProperty (
        module Exports, FilledMapSortConfigurationProperty(..),
        mkFilledMapSortConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSortOptionsProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapSortConfigurationProperty
  = FilledMapSortConfigurationProperty {categorySort :: (Prelude.Maybe [FieldSortOptionsProperty])}
mkFilledMapSortConfigurationProperty ::
  FilledMapSortConfigurationProperty
mkFilledMapSortConfigurationProperty
  = FilledMapSortConfigurationProperty
      {categorySort = Prelude.Nothing}
instance ToResourceProperties FilledMapSortConfigurationProperty where
  toResourceProperties FilledMapSortConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilledMapSortConfiguration",
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
  set newValue FilledMapSortConfigurationProperty {}
    = FilledMapSortConfigurationProperty
        {categorySort = Prelude.pure newValue, ..}
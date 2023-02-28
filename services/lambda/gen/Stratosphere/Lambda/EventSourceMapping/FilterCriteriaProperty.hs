module Stratosphere.Lambda.EventSourceMapping.FilterCriteriaProperty (
        module Exports, FilterCriteriaProperty(..),
        mkFilterCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.FilterProperty as Exports
import Stratosphere.ResourceProperties
data FilterCriteriaProperty
  = FilterCriteriaProperty {filters :: (Prelude.Maybe [FilterProperty])}
mkFilterCriteriaProperty :: FilterCriteriaProperty
mkFilterCriteriaProperty
  = FilterCriteriaProperty {filters = Prelude.Nothing}
instance ToResourceProperties FilterCriteriaProperty where
  toResourceProperties FilterCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.FilterCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Filters" Prelude.<$> filters])}
instance JSON.ToJSON FilterCriteriaProperty where
  toJSON FilterCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Filters" Prelude.<$> filters]))
instance Property "Filters" FilterCriteriaProperty where
  type PropertyType "Filters" FilterCriteriaProperty = [FilterProperty]
  set newValue FilterCriteriaProperty {}
    = FilterCriteriaProperty {filters = Prelude.pure newValue, ..}
module Stratosphere.InspectorV2.Filter (
        module Exports, Filter(..), mkFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.FilterCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Filter
  = Filter {description :: (Prelude.Maybe (Value Prelude.Text)),
            filterAction :: (Value Prelude.Text),
            filterCriteria :: FilterCriteriaProperty,
            name :: (Value Prelude.Text)}
mkFilter ::
  Value Prelude.Text
  -> FilterCriteriaProperty -> Value Prelude.Text -> Filter
mkFilter filterAction filterCriteria name
  = Filter
      {filterAction = filterAction, filterCriteria = filterCriteria,
       name = name, description = Prelude.Nothing}
instance ToResourceProperties Filter where
  toResourceProperties Filter {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterAction" JSON..= filterAction,
                            "FilterCriteria" JSON..= filterCriteria, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON Filter where
  toJSON Filter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterAction" JSON..= filterAction,
               "FilterCriteria" JSON..= filterCriteria, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" Filter where
  type PropertyType "Description" Filter = Value Prelude.Text
  set newValue Filter {..}
    = Filter {description = Prelude.pure newValue, ..}
instance Property "FilterAction" Filter where
  type PropertyType "FilterAction" Filter = Value Prelude.Text
  set newValue Filter {..} = Filter {filterAction = newValue, ..}
instance Property "FilterCriteria" Filter where
  type PropertyType "FilterCriteria" Filter = FilterCriteriaProperty
  set newValue Filter {..} = Filter {filterCriteria = newValue, ..}
instance Property "Name" Filter where
  type PropertyType "Name" Filter = Value Prelude.Text
  set newValue Filter {..} = Filter {name = newValue, ..}
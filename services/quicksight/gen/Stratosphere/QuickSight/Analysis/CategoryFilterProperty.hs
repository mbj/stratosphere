module Stratosphere.QuickSight.Analysis.CategoryFilterProperty (
        module Exports, CategoryFilterProperty(..),
        mkCategoryFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CategoryFilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CategoryFilterProperty
  = CategoryFilterProperty {column :: ColumnIdentifierProperty,
                            configuration :: CategoryFilterConfigurationProperty,
                            filterId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCategoryFilterProperty ::
  ColumnIdentifierProperty
  -> CategoryFilterConfigurationProperty
     -> Value Prelude.Text -> CategoryFilterProperty
mkCategoryFilterProperty column configuration filterId
  = CategoryFilterProperty
      {column = column, configuration = configuration,
       filterId = filterId}
instance ToResourceProperties CategoryFilterProperty where
  toResourceProperties CategoryFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CategoryFilter",
         supportsTags = Prelude.False,
         properties = ["Column" JSON..= column,
                       "Configuration" JSON..= configuration,
                       "FilterId" JSON..= filterId]}
instance JSON.ToJSON CategoryFilterProperty where
  toJSON CategoryFilterProperty {..}
    = JSON.object
        ["Column" JSON..= column, "Configuration" JSON..= configuration,
         "FilterId" JSON..= filterId]
instance Property "Column" CategoryFilterProperty where
  type PropertyType "Column" CategoryFilterProperty = ColumnIdentifierProperty
  set newValue CategoryFilterProperty {..}
    = CategoryFilterProperty {column = newValue, ..}
instance Property "Configuration" CategoryFilterProperty where
  type PropertyType "Configuration" CategoryFilterProperty = CategoryFilterConfigurationProperty
  set newValue CategoryFilterProperty {..}
    = CategoryFilterProperty {configuration = newValue, ..}
instance Property "FilterId" CategoryFilterProperty where
  type PropertyType "FilterId" CategoryFilterProperty = Value Prelude.Text
  set newValue CategoryFilterProperty {..}
    = CategoryFilterProperty {filterId = newValue, ..}
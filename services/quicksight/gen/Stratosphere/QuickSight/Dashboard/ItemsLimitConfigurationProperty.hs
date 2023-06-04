module Stratosphere.QuickSight.Dashboard.ItemsLimitConfigurationProperty (
        ItemsLimitConfigurationProperty(..),
        mkItemsLimitConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ItemsLimitConfigurationProperty
  = ItemsLimitConfigurationProperty {itemsLimit :: (Prelude.Maybe (Value Prelude.Double)),
                                     otherCategories :: (Prelude.Maybe (Value Prelude.Text))}
mkItemsLimitConfigurationProperty ::
  ItemsLimitConfigurationProperty
mkItemsLimitConfigurationProperty
  = ItemsLimitConfigurationProperty
      {itemsLimit = Prelude.Nothing, otherCategories = Prelude.Nothing}
instance ToResourceProperties ItemsLimitConfigurationProperty where
  toResourceProperties ItemsLimitConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ItemsLimitConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ItemsLimit" Prelude.<$> itemsLimit,
                            (JSON..=) "OtherCategories" Prelude.<$> otherCategories])}
instance JSON.ToJSON ItemsLimitConfigurationProperty where
  toJSON ItemsLimitConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ItemsLimit" Prelude.<$> itemsLimit,
               (JSON..=) "OtherCategories" Prelude.<$> otherCategories]))
instance Property "ItemsLimit" ItemsLimitConfigurationProperty where
  type PropertyType "ItemsLimit" ItemsLimitConfigurationProperty = Value Prelude.Double
  set newValue ItemsLimitConfigurationProperty {..}
    = ItemsLimitConfigurationProperty
        {itemsLimit = Prelude.pure newValue, ..}
instance Property "OtherCategories" ItemsLimitConfigurationProperty where
  type PropertyType "OtherCategories" ItemsLimitConfigurationProperty = Value Prelude.Text
  set newValue ItemsLimitConfigurationProperty {..}
    = ItemsLimitConfigurationProperty
        {otherCategories = Prelude.pure newValue, ..}
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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-itemslimitconfiguration.html>
    ItemsLimitConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-itemslimitconfiguration.html#cfn-quicksight-dashboard-itemslimitconfiguration-itemslimit>
                                     itemsLimit :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-itemslimitconfiguration.html#cfn-quicksight-dashboard-itemslimitconfiguration-othercategories>
                                     otherCategories :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkItemsLimitConfigurationProperty ::
  ItemsLimitConfigurationProperty
mkItemsLimitConfigurationProperty
  = ItemsLimitConfigurationProperty
      {haddock_workaround_ = (), itemsLimit = Prelude.Nothing,
       otherCategories = Prelude.Nothing}
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
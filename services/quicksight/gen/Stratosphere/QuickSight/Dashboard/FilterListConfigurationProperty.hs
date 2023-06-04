module Stratosphere.QuickSight.Dashboard.FilterListConfigurationProperty (
        FilterListConfigurationProperty(..),
        mkFilterListConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterListConfigurationProperty
  = FilterListConfigurationProperty {categoryValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     matchOperator :: (Value Prelude.Text),
                                     selectAllOptions :: (Prelude.Maybe (Value Prelude.Text))}
mkFilterListConfigurationProperty ::
  Value Prelude.Text -> FilterListConfigurationProperty
mkFilterListConfigurationProperty matchOperator
  = FilterListConfigurationProperty
      {matchOperator = matchOperator, categoryValues = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing}
instance ToResourceProperties FilterListConfigurationProperty where
  toResourceProperties FilterListConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilterListConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchOperator" JSON..= matchOperator]
                           (Prelude.catMaybes
                              [(JSON..=) "CategoryValues" Prelude.<$> categoryValues,
                               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions]))}
instance JSON.ToJSON FilterListConfigurationProperty where
  toJSON FilterListConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchOperator" JSON..= matchOperator]
              (Prelude.catMaybes
                 [(JSON..=) "CategoryValues" Prelude.<$> categoryValues,
                  (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions])))
instance Property "CategoryValues" FilterListConfigurationProperty where
  type PropertyType "CategoryValues" FilterListConfigurationProperty = ValueList Prelude.Text
  set newValue FilterListConfigurationProperty {..}
    = FilterListConfigurationProperty
        {categoryValues = Prelude.pure newValue, ..}
instance Property "MatchOperator" FilterListConfigurationProperty where
  type PropertyType "MatchOperator" FilterListConfigurationProperty = Value Prelude.Text
  set newValue FilterListConfigurationProperty {..}
    = FilterListConfigurationProperty {matchOperator = newValue, ..}
instance Property "SelectAllOptions" FilterListConfigurationProperty where
  type PropertyType "SelectAllOptions" FilterListConfigurationProperty = Value Prelude.Text
  set newValue FilterListConfigurationProperty {..}
    = FilterListConfigurationProperty
        {selectAllOptions = Prelude.pure newValue, ..}
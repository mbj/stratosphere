module Stratosphere.QuickSight.DataSet.RowLevelPermissionTagRuleProperty (
        RowLevelPermissionTagRuleProperty(..),
        mkRowLevelPermissionTagRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RowLevelPermissionTagRuleProperty
  = RowLevelPermissionTagRuleProperty {columnName :: (Value Prelude.Text),
                                       matchAllValue :: (Prelude.Maybe (Value Prelude.Text)),
                                       tagKey :: (Value Prelude.Text),
                                       tagMultiValueDelimiter :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRowLevelPermissionTagRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RowLevelPermissionTagRuleProperty
mkRowLevelPermissionTagRuleProperty columnName tagKey
  = RowLevelPermissionTagRuleProperty
      {columnName = columnName, tagKey = tagKey,
       matchAllValue = Prelude.Nothing,
       tagMultiValueDelimiter = Prelude.Nothing}
instance ToResourceProperties RowLevelPermissionTagRuleProperty where
  toResourceProperties RowLevelPermissionTagRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RowLevelPermissionTagRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ColumnName" JSON..= columnName, "TagKey" JSON..= tagKey]
                           (Prelude.catMaybes
                              [(JSON..=) "MatchAllValue" Prelude.<$> matchAllValue,
                               (JSON..=) "TagMultiValueDelimiter"
                                 Prelude.<$> tagMultiValueDelimiter]))}
instance JSON.ToJSON RowLevelPermissionTagRuleProperty where
  toJSON RowLevelPermissionTagRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ColumnName" JSON..= columnName, "TagKey" JSON..= tagKey]
              (Prelude.catMaybes
                 [(JSON..=) "MatchAllValue" Prelude.<$> matchAllValue,
                  (JSON..=) "TagMultiValueDelimiter"
                    Prelude.<$> tagMultiValueDelimiter])))
instance Property "ColumnName" RowLevelPermissionTagRuleProperty where
  type PropertyType "ColumnName" RowLevelPermissionTagRuleProperty = Value Prelude.Text
  set newValue RowLevelPermissionTagRuleProperty {..}
    = RowLevelPermissionTagRuleProperty {columnName = newValue, ..}
instance Property "MatchAllValue" RowLevelPermissionTagRuleProperty where
  type PropertyType "MatchAllValue" RowLevelPermissionTagRuleProperty = Value Prelude.Text
  set newValue RowLevelPermissionTagRuleProperty {..}
    = RowLevelPermissionTagRuleProperty
        {matchAllValue = Prelude.pure newValue, ..}
instance Property "TagKey" RowLevelPermissionTagRuleProperty where
  type PropertyType "TagKey" RowLevelPermissionTagRuleProperty = Value Prelude.Text
  set newValue RowLevelPermissionTagRuleProperty {..}
    = RowLevelPermissionTagRuleProperty {tagKey = newValue, ..}
instance Property "TagMultiValueDelimiter" RowLevelPermissionTagRuleProperty where
  type PropertyType "TagMultiValueDelimiter" RowLevelPermissionTagRuleProperty = Value Prelude.Text
  set newValue RowLevelPermissionTagRuleProperty {..}
    = RowLevelPermissionTagRuleProperty
        {tagMultiValueDelimiter = Prelude.pure newValue, ..}
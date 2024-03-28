module Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleListProperty (
        AnalysisRuleListProperty(..), mkAnalysisRuleListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisRuleListProperty
  = AnalysisRuleListProperty {allowedJoinOperators :: (Prelude.Maybe (ValueList Prelude.Text)),
                              joinColumns :: (ValueList Prelude.Text),
                              listColumns :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisRuleListProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> AnalysisRuleListProperty
mkAnalysisRuleListProperty joinColumns listColumns
  = AnalysisRuleListProperty
      {joinColumns = joinColumns, listColumns = listColumns,
       allowedJoinOperators = Prelude.Nothing}
instance ToResourceProperties AnalysisRuleListProperty where
  toResourceProperties AnalysisRuleListProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.AnalysisRuleList",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JoinColumns" JSON..= joinColumns,
                            "ListColumns" JSON..= listColumns]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedJoinOperators"
                                 Prelude.<$> allowedJoinOperators]))}
instance JSON.ToJSON AnalysisRuleListProperty where
  toJSON AnalysisRuleListProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JoinColumns" JSON..= joinColumns,
               "ListColumns" JSON..= listColumns]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedJoinOperators"
                    Prelude.<$> allowedJoinOperators])))
instance Property "AllowedJoinOperators" AnalysisRuleListProperty where
  type PropertyType "AllowedJoinOperators" AnalysisRuleListProperty = ValueList Prelude.Text
  set newValue AnalysisRuleListProperty {..}
    = AnalysisRuleListProperty
        {allowedJoinOperators = Prelude.pure newValue, ..}
instance Property "JoinColumns" AnalysisRuleListProperty where
  type PropertyType "JoinColumns" AnalysisRuleListProperty = ValueList Prelude.Text
  set newValue AnalysisRuleListProperty {..}
    = AnalysisRuleListProperty {joinColumns = newValue, ..}
instance Property "ListColumns" AnalysisRuleListProperty where
  type PropertyType "ListColumns" AnalysisRuleListProperty = ValueList Prelude.Text
  set newValue AnalysisRuleListProperty {..}
    = AnalysisRuleListProperty {listColumns = newValue, ..}
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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterlistconfiguration.html>
    FilterListConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterlistconfiguration.html#cfn-quicksight-dashboard-filterlistconfiguration-categoryvalues>
                                     categoryValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterlistconfiguration.html#cfn-quicksight-dashboard-filterlistconfiguration-matchoperator>
                                     matchOperator :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterlistconfiguration.html#cfn-quicksight-dashboard-filterlistconfiguration-nulloption>
                                     nullOption :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterlistconfiguration.html#cfn-quicksight-dashboard-filterlistconfiguration-selectalloptions>
                                     selectAllOptions :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterListConfigurationProperty ::
  Value Prelude.Text -> FilterListConfigurationProperty
mkFilterListConfigurationProperty matchOperator
  = FilterListConfigurationProperty
      {haddock_workaround_ = (), matchOperator = matchOperator,
       categoryValues = Prelude.Nothing, nullOption = Prelude.Nothing,
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
                               (JSON..=) "NullOption" Prelude.<$> nullOption,
                               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions]))}
instance JSON.ToJSON FilterListConfigurationProperty where
  toJSON FilterListConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchOperator" JSON..= matchOperator]
              (Prelude.catMaybes
                 [(JSON..=) "CategoryValues" Prelude.<$> categoryValues,
                  (JSON..=) "NullOption" Prelude.<$> nullOption,
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
instance Property "NullOption" FilterListConfigurationProperty where
  type PropertyType "NullOption" FilterListConfigurationProperty = Value Prelude.Text
  set newValue FilterListConfigurationProperty {..}
    = FilterListConfigurationProperty
        {nullOption = Prelude.pure newValue, ..}
instance Property "SelectAllOptions" FilterListConfigurationProperty where
  type PropertyType "SelectAllOptions" FilterListConfigurationProperty = Value Prelude.Text
  set newValue FilterListConfigurationProperty {..}
    = FilterListConfigurationProperty
        {selectAllOptions = Prelude.pure newValue, ..}
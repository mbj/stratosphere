module Stratosphere.QuickSight.Dashboard.CustomFilterListConfigurationProperty (
        CustomFilterListConfigurationProperty(..),
        mkCustomFilterListConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomFilterListConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customfilterlistconfiguration.html>
    CustomFilterListConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customfilterlistconfiguration.html#cfn-quicksight-dashboard-customfilterlistconfiguration-categoryvalues>
                                           categoryValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customfilterlistconfiguration.html#cfn-quicksight-dashboard-customfilterlistconfiguration-matchoperator>
                                           matchOperator :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customfilterlistconfiguration.html#cfn-quicksight-dashboard-customfilterlistconfiguration-nulloption>
                                           nullOption :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customfilterlistconfiguration.html#cfn-quicksight-dashboard-customfilterlistconfiguration-selectalloptions>
                                           selectAllOptions :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomFilterListConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomFilterListConfigurationProperty
mkCustomFilterListConfigurationProperty matchOperator nullOption
  = CustomFilterListConfigurationProperty
      {haddock_workaround_ = (), matchOperator = matchOperator,
       nullOption = nullOption, categoryValues = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing}
instance ToResourceProperties CustomFilterListConfigurationProperty where
  toResourceProperties CustomFilterListConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CustomFilterListConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchOperator" JSON..= matchOperator,
                            "NullOption" JSON..= nullOption]
                           (Prelude.catMaybes
                              [(JSON..=) "CategoryValues" Prelude.<$> categoryValues,
                               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions]))}
instance JSON.ToJSON CustomFilterListConfigurationProperty where
  toJSON CustomFilterListConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchOperator" JSON..= matchOperator,
               "NullOption" JSON..= nullOption]
              (Prelude.catMaybes
                 [(JSON..=) "CategoryValues" Prelude.<$> categoryValues,
                  (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions])))
instance Property "CategoryValues" CustomFilterListConfigurationProperty where
  type PropertyType "CategoryValues" CustomFilterListConfigurationProperty = ValueList Prelude.Text
  set newValue CustomFilterListConfigurationProperty {..}
    = CustomFilterListConfigurationProperty
        {categoryValues = Prelude.pure newValue, ..}
instance Property "MatchOperator" CustomFilterListConfigurationProperty where
  type PropertyType "MatchOperator" CustomFilterListConfigurationProperty = Value Prelude.Text
  set newValue CustomFilterListConfigurationProperty {..}
    = CustomFilterListConfigurationProperty
        {matchOperator = newValue, ..}
instance Property "NullOption" CustomFilterListConfigurationProperty where
  type PropertyType "NullOption" CustomFilterListConfigurationProperty = Value Prelude.Text
  set newValue CustomFilterListConfigurationProperty {..}
    = CustomFilterListConfigurationProperty {nullOption = newValue, ..}
instance Property "SelectAllOptions" CustomFilterListConfigurationProperty where
  type PropertyType "SelectAllOptions" CustomFilterListConfigurationProperty = Value Prelude.Text
  set newValue CustomFilterListConfigurationProperty {..}
    = CustomFilterListConfigurationProperty
        {selectAllOptions = Prelude.pure newValue, ..}
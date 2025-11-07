module Stratosphere.QuickSight.Template.CustomFilterConfigurationProperty (
        CustomFilterConfigurationProperty(..),
        mkCustomFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomFilterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customfilterconfiguration.html>
    CustomFilterConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customfilterconfiguration.html#cfn-quicksight-template-customfilterconfiguration-categoryvalue>
                                       categoryValue :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customfilterconfiguration.html#cfn-quicksight-template-customfilterconfiguration-matchoperator>
                                       matchOperator :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customfilterconfiguration.html#cfn-quicksight-template-customfilterconfiguration-nulloption>
                                       nullOption :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customfilterconfiguration.html#cfn-quicksight-template-customfilterconfiguration-parametername>
                                       parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customfilterconfiguration.html#cfn-quicksight-template-customfilterconfiguration-selectalloptions>
                                       selectAllOptions :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomFilterConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomFilterConfigurationProperty
mkCustomFilterConfigurationProperty matchOperator nullOption
  = CustomFilterConfigurationProperty
      {haddock_workaround_ = (), matchOperator = matchOperator,
       nullOption = nullOption, categoryValue = Prelude.Nothing,
       parameterName = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing}
instance ToResourceProperties CustomFilterConfigurationProperty where
  toResourceProperties CustomFilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CustomFilterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchOperator" JSON..= matchOperator,
                            "NullOption" JSON..= nullOption]
                           (Prelude.catMaybes
                              [(JSON..=) "CategoryValue" Prelude.<$> categoryValue,
                               (JSON..=) "ParameterName" Prelude.<$> parameterName,
                               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions]))}
instance JSON.ToJSON CustomFilterConfigurationProperty where
  toJSON CustomFilterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchOperator" JSON..= matchOperator,
               "NullOption" JSON..= nullOption]
              (Prelude.catMaybes
                 [(JSON..=) "CategoryValue" Prelude.<$> categoryValue,
                  (JSON..=) "ParameterName" Prelude.<$> parameterName,
                  (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions])))
instance Property "CategoryValue" CustomFilterConfigurationProperty where
  type PropertyType "CategoryValue" CustomFilterConfigurationProperty = Value Prelude.Text
  set newValue CustomFilterConfigurationProperty {..}
    = CustomFilterConfigurationProperty
        {categoryValue = Prelude.pure newValue, ..}
instance Property "MatchOperator" CustomFilterConfigurationProperty where
  type PropertyType "MatchOperator" CustomFilterConfigurationProperty = Value Prelude.Text
  set newValue CustomFilterConfigurationProperty {..}
    = CustomFilterConfigurationProperty {matchOperator = newValue, ..}
instance Property "NullOption" CustomFilterConfigurationProperty where
  type PropertyType "NullOption" CustomFilterConfigurationProperty = Value Prelude.Text
  set newValue CustomFilterConfigurationProperty {..}
    = CustomFilterConfigurationProperty {nullOption = newValue, ..}
instance Property "ParameterName" CustomFilterConfigurationProperty where
  type PropertyType "ParameterName" CustomFilterConfigurationProperty = Value Prelude.Text
  set newValue CustomFilterConfigurationProperty {..}
    = CustomFilterConfigurationProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "SelectAllOptions" CustomFilterConfigurationProperty where
  type PropertyType "SelectAllOptions" CustomFilterConfigurationProperty = Value Prelude.Text
  set newValue CustomFilterConfigurationProperty {..}
    = CustomFilterConfigurationProperty
        {selectAllOptions = Prelude.pure newValue, ..}
module Stratosphere.QuickSight.Template.RelativeDatesFilterProperty (
        module Exports, RelativeDatesFilterProperty(..),
        mkRelativeDatesFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AnchorDateConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DefaultFilterControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ExcludePeriodConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelativeDatesFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html>
    RelativeDatesFilterProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-anchordateconfiguration>
                                 anchorDateConfiguration :: AnchorDateConfigurationProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-column>
                                 column :: ColumnIdentifierProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-defaultfiltercontrolconfiguration>
                                 defaultFilterControlConfiguration :: (Prelude.Maybe DefaultFilterControlConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-excludeperiodconfiguration>
                                 excludePeriodConfiguration :: (Prelude.Maybe ExcludePeriodConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-filterid>
                                 filterId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-minimumgranularity>
                                 minimumGranularity :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-nulloption>
                                 nullOption :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-parametername>
                                 parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-relativedatetype>
                                 relativeDateType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-relativedatevalue>
                                 relativeDateValue :: (Prelude.Maybe (Value Prelude.Double)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-relativedatesfilter.html#cfn-quicksight-template-relativedatesfilter-timegranularity>
                                 timeGranularity :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelativeDatesFilterProperty ::
  AnchorDateConfigurationProperty
  -> ColumnIdentifierProperty
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text -> RelativeDatesFilterProperty
mkRelativeDatesFilterProperty
  anchorDateConfiguration
  column
  filterId
  nullOption
  relativeDateType
  timeGranularity
  = RelativeDatesFilterProperty
      {haddock_workaround_ = (),
       anchorDateConfiguration = anchorDateConfiguration, column = column,
       filterId = filterId, nullOption = nullOption,
       relativeDateType = relativeDateType,
       timeGranularity = timeGranularity,
       defaultFilterControlConfiguration = Prelude.Nothing,
       excludePeriodConfiguration = Prelude.Nothing,
       minimumGranularity = Prelude.Nothing,
       parameterName = Prelude.Nothing,
       relativeDateValue = Prelude.Nothing}
instance ToResourceProperties RelativeDatesFilterProperty where
  toResourceProperties RelativeDatesFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.RelativeDatesFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AnchorDateConfiguration" JSON..= anchorDateConfiguration,
                            "Column" JSON..= column, "FilterId" JSON..= filterId,
                            "NullOption" JSON..= nullOption,
                            "RelativeDateType" JSON..= relativeDateType,
                            "TimeGranularity" JSON..= timeGranularity]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultFilterControlConfiguration"
                                 Prelude.<$> defaultFilterControlConfiguration,
                               (JSON..=) "ExcludePeriodConfiguration"
                                 Prelude.<$> excludePeriodConfiguration,
                               (JSON..=) "MinimumGranularity" Prelude.<$> minimumGranularity,
                               (JSON..=) "ParameterName" Prelude.<$> parameterName,
                               (JSON..=) "RelativeDateValue" Prelude.<$> relativeDateValue]))}
instance JSON.ToJSON RelativeDatesFilterProperty where
  toJSON RelativeDatesFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AnchorDateConfiguration" JSON..= anchorDateConfiguration,
               "Column" JSON..= column, "FilterId" JSON..= filterId,
               "NullOption" JSON..= nullOption,
               "RelativeDateType" JSON..= relativeDateType,
               "TimeGranularity" JSON..= timeGranularity]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultFilterControlConfiguration"
                    Prelude.<$> defaultFilterControlConfiguration,
                  (JSON..=) "ExcludePeriodConfiguration"
                    Prelude.<$> excludePeriodConfiguration,
                  (JSON..=) "MinimumGranularity" Prelude.<$> minimumGranularity,
                  (JSON..=) "ParameterName" Prelude.<$> parameterName,
                  (JSON..=) "RelativeDateValue" Prelude.<$> relativeDateValue])))
instance Property "AnchorDateConfiguration" RelativeDatesFilterProperty where
  type PropertyType "AnchorDateConfiguration" RelativeDatesFilterProperty = AnchorDateConfigurationProperty
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty
        {anchorDateConfiguration = newValue, ..}
instance Property "Column" RelativeDatesFilterProperty where
  type PropertyType "Column" RelativeDatesFilterProperty = ColumnIdentifierProperty
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty {column = newValue, ..}
instance Property "DefaultFilterControlConfiguration" RelativeDatesFilterProperty where
  type PropertyType "DefaultFilterControlConfiguration" RelativeDatesFilterProperty = DefaultFilterControlConfigurationProperty
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty
        {defaultFilterControlConfiguration = Prelude.pure newValue, ..}
instance Property "ExcludePeriodConfiguration" RelativeDatesFilterProperty where
  type PropertyType "ExcludePeriodConfiguration" RelativeDatesFilterProperty = ExcludePeriodConfigurationProperty
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty
        {excludePeriodConfiguration = Prelude.pure newValue, ..}
instance Property "FilterId" RelativeDatesFilterProperty where
  type PropertyType "FilterId" RelativeDatesFilterProperty = Value Prelude.Text
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty {filterId = newValue, ..}
instance Property "MinimumGranularity" RelativeDatesFilterProperty where
  type PropertyType "MinimumGranularity" RelativeDatesFilterProperty = Value Prelude.Text
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty
        {minimumGranularity = Prelude.pure newValue, ..}
instance Property "NullOption" RelativeDatesFilterProperty where
  type PropertyType "NullOption" RelativeDatesFilterProperty = Value Prelude.Text
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty {nullOption = newValue, ..}
instance Property "ParameterName" RelativeDatesFilterProperty where
  type PropertyType "ParameterName" RelativeDatesFilterProperty = Value Prelude.Text
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "RelativeDateType" RelativeDatesFilterProperty where
  type PropertyType "RelativeDateType" RelativeDatesFilterProperty = Value Prelude.Text
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty {relativeDateType = newValue, ..}
instance Property "RelativeDateValue" RelativeDatesFilterProperty where
  type PropertyType "RelativeDateValue" RelativeDatesFilterProperty = Value Prelude.Double
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty
        {relativeDateValue = Prelude.pure newValue, ..}
instance Property "TimeGranularity" RelativeDatesFilterProperty where
  type PropertyType "TimeGranularity" RelativeDatesFilterProperty = Value Prelude.Text
  set newValue RelativeDatesFilterProperty {..}
    = RelativeDatesFilterProperty {timeGranularity = newValue, ..}
module Stratosphere.QuickSight.Template.LineSeriesAxisDisplayOptionsProperty (
        module Exports, LineSeriesAxisDisplayOptionsProperty(..),
        mkLineSeriesAxisDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MissingDataConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LineSeriesAxisDisplayOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-lineseriesaxisdisplayoptions.html>
    LineSeriesAxisDisplayOptionsProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-lineseriesaxisdisplayoptions.html#cfn-quicksight-template-lineseriesaxisdisplayoptions-axisoptions>
                                          axisOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-lineseriesaxisdisplayoptions.html#cfn-quicksight-template-lineseriesaxisdisplayoptions-missingdataconfigurations>
                                          missingDataConfigurations :: (Prelude.Maybe [MissingDataConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineSeriesAxisDisplayOptionsProperty ::
  LineSeriesAxisDisplayOptionsProperty
mkLineSeriesAxisDisplayOptionsProperty
  = LineSeriesAxisDisplayOptionsProperty
      {haddock_workaround_ = (), axisOptions = Prelude.Nothing,
       missingDataConfigurations = Prelude.Nothing}
instance ToResourceProperties LineSeriesAxisDisplayOptionsProperty where
  toResourceProperties LineSeriesAxisDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.LineSeriesAxisDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisOptions" Prelude.<$> axisOptions,
                            (JSON..=) "MissingDataConfigurations"
                              Prelude.<$> missingDataConfigurations])}
instance JSON.ToJSON LineSeriesAxisDisplayOptionsProperty where
  toJSON LineSeriesAxisDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisOptions" Prelude.<$> axisOptions,
               (JSON..=) "MissingDataConfigurations"
                 Prelude.<$> missingDataConfigurations]))
instance Property "AxisOptions" LineSeriesAxisDisplayOptionsProperty where
  type PropertyType "AxisOptions" LineSeriesAxisDisplayOptionsProperty = AxisDisplayOptionsProperty
  set newValue LineSeriesAxisDisplayOptionsProperty {..}
    = LineSeriesAxisDisplayOptionsProperty
        {axisOptions = Prelude.pure newValue, ..}
instance Property "MissingDataConfigurations" LineSeriesAxisDisplayOptionsProperty where
  type PropertyType "MissingDataConfigurations" LineSeriesAxisDisplayOptionsProperty = [MissingDataConfigurationProperty]
  set newValue LineSeriesAxisDisplayOptionsProperty {..}
    = LineSeriesAxisDisplayOptionsProperty
        {missingDataConfigurations = Prelude.pure newValue, ..}
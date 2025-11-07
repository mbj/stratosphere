module Stratosphere.QuickSight.Analysis.CustomContentVisualProperty (
        module Exports, CustomContentVisualProperty(..),
        mkCustomContentVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomContentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomContentVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentvisual.html>
    CustomContentVisualProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentvisual.html#cfn-quicksight-analysis-customcontentvisual-actions>
                                 actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentvisual.html#cfn-quicksight-analysis-customcontentvisual-chartconfiguration>
                                 chartConfiguration :: (Prelude.Maybe CustomContentConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentvisual.html#cfn-quicksight-analysis-customcontentvisual-datasetidentifier>
                                 dataSetIdentifier :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentvisual.html#cfn-quicksight-analysis-customcontentvisual-subtitle>
                                 subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentvisual.html#cfn-quicksight-analysis-customcontentvisual-title>
                                 title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentvisual.html#cfn-quicksight-analysis-customcontentvisual-visualcontentalttext>
                                 visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customcontentvisual.html#cfn-quicksight-analysis-customcontentvisual-visualid>
                                 visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomContentVisualProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomContentVisualProperty
mkCustomContentVisualProperty dataSetIdentifier visualId
  = CustomContentVisualProperty
      {haddock_workaround_ = (), dataSetIdentifier = dataSetIdentifier,
       visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties CustomContentVisualProperty where
  toResourceProperties CustomContentVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CustomContentVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetIdentifier" JSON..= dataSetIdentifier,
                            "VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON CustomContentVisualProperty where
  toJSON CustomContentVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetIdentifier" JSON..= dataSetIdentifier,
               "VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" CustomContentVisualProperty where
  type PropertyType "Actions" CustomContentVisualProperty = [VisualCustomActionProperty]
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" CustomContentVisualProperty where
  type PropertyType "ChartConfiguration" CustomContentVisualProperty = CustomContentConfigurationProperty
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "DataSetIdentifier" CustomContentVisualProperty where
  type PropertyType "DataSetIdentifier" CustomContentVisualProperty = Value Prelude.Text
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty {dataSetIdentifier = newValue, ..}
instance Property "Subtitle" CustomContentVisualProperty where
  type PropertyType "Subtitle" CustomContentVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty
        {subtitle = Prelude.pure newValue, ..}
instance Property "Title" CustomContentVisualProperty where
  type PropertyType "Title" CustomContentVisualProperty = VisualTitleLabelOptionsProperty
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" CustomContentVisualProperty where
  type PropertyType "VisualContentAltText" CustomContentVisualProperty = Value Prelude.Text
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" CustomContentVisualProperty where
  type PropertyType "VisualId" CustomContentVisualProperty = Value Prelude.Text
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty {visualId = newValue, ..}
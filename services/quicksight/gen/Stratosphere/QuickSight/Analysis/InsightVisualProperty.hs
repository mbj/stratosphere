module Stratosphere.QuickSight.Analysis.InsightVisualProperty (
        module Exports, InsightVisualProperty(..), mkInsightVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.InsightConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InsightVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-insightvisual.html>
    InsightVisualProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-insightvisual.html#cfn-quicksight-analysis-insightvisual-actions>
                           actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-insightvisual.html#cfn-quicksight-analysis-insightvisual-datasetidentifier>
                           dataSetIdentifier :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-insightvisual.html#cfn-quicksight-analysis-insightvisual-insightconfiguration>
                           insightConfiguration :: (Prelude.Maybe InsightConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-insightvisual.html#cfn-quicksight-analysis-insightvisual-subtitle>
                           subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-insightvisual.html#cfn-quicksight-analysis-insightvisual-title>
                           title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-insightvisual.html#cfn-quicksight-analysis-insightvisual-visualcontentalttext>
                           visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-insightvisual.html#cfn-quicksight-analysis-insightvisual-visualid>
                           visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInsightVisualProperty ::
  Value Prelude.Text -> Value Prelude.Text -> InsightVisualProperty
mkInsightVisualProperty dataSetIdentifier visualId
  = InsightVisualProperty
      {haddock_workaround_ = (), dataSetIdentifier = dataSetIdentifier,
       visualId = visualId, actions = Prelude.Nothing,
       insightConfiguration = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties InsightVisualProperty where
  toResourceProperties InsightVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.InsightVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetIdentifier" JSON..= dataSetIdentifier,
                            "VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "InsightConfiguration" Prelude.<$> insightConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON InsightVisualProperty where
  toJSON InsightVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetIdentifier" JSON..= dataSetIdentifier,
               "VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "InsightConfiguration" Prelude.<$> insightConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" InsightVisualProperty where
  type PropertyType "Actions" InsightVisualProperty = [VisualCustomActionProperty]
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "DataSetIdentifier" InsightVisualProperty where
  type PropertyType "DataSetIdentifier" InsightVisualProperty = Value Prelude.Text
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {dataSetIdentifier = newValue, ..}
instance Property "InsightConfiguration" InsightVisualProperty where
  type PropertyType "InsightConfiguration" InsightVisualProperty = InsightConfigurationProperty
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty
        {insightConfiguration = Prelude.pure newValue, ..}
instance Property "Subtitle" InsightVisualProperty where
  type PropertyType "Subtitle" InsightVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" InsightVisualProperty where
  type PropertyType "Title" InsightVisualProperty = VisualTitleLabelOptionsProperty
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" InsightVisualProperty where
  type PropertyType "VisualContentAltText" InsightVisualProperty = Value Prelude.Text
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" InsightVisualProperty where
  type PropertyType "VisualId" InsightVisualProperty = Value Prelude.Text
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {visualId = newValue, ..}
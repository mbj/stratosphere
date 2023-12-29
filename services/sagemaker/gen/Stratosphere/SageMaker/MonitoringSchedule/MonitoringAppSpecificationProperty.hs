module Stratosphere.SageMaker.MonitoringSchedule.MonitoringAppSpecificationProperty (
        MonitoringAppSpecificationProperty(..),
        mkMonitoringAppSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringAppSpecificationProperty
  = MonitoringAppSpecificationProperty {containerArguments :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        containerEntrypoint :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        imageUri :: (Value Prelude.Text),
                                        postAnalyticsProcessorSourceUri :: (Prelude.Maybe (Value Prelude.Text)),
                                        recordPreprocessorSourceUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringAppSpecificationProperty ::
  Value Prelude.Text -> MonitoringAppSpecificationProperty
mkMonitoringAppSpecificationProperty imageUri
  = MonitoringAppSpecificationProperty
      {imageUri = imageUri, containerArguments = Prelude.Nothing,
       containerEntrypoint = Prelude.Nothing,
       postAnalyticsProcessorSourceUri = Prelude.Nothing,
       recordPreprocessorSourceUri = Prelude.Nothing}
instance ToResourceProperties MonitoringAppSpecificationProperty where
  toResourceProperties MonitoringAppSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.MonitoringAppSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageUri" JSON..= imageUri]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                               (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint,
                               (JSON..=) "PostAnalyticsProcessorSourceUri"
                                 Prelude.<$> postAnalyticsProcessorSourceUri,
                               (JSON..=) "RecordPreprocessorSourceUri"
                                 Prelude.<$> recordPreprocessorSourceUri]))}
instance JSON.ToJSON MonitoringAppSpecificationProperty where
  toJSON MonitoringAppSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageUri" JSON..= imageUri]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                  (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint,
                  (JSON..=) "PostAnalyticsProcessorSourceUri"
                    Prelude.<$> postAnalyticsProcessorSourceUri,
                  (JSON..=) "RecordPreprocessorSourceUri"
                    Prelude.<$> recordPreprocessorSourceUri])))
instance Property "ContainerArguments" MonitoringAppSpecificationProperty where
  type PropertyType "ContainerArguments" MonitoringAppSpecificationProperty = ValueList Prelude.Text
  set newValue MonitoringAppSpecificationProperty {..}
    = MonitoringAppSpecificationProperty
        {containerArguments = Prelude.pure newValue, ..}
instance Property "ContainerEntrypoint" MonitoringAppSpecificationProperty where
  type PropertyType "ContainerEntrypoint" MonitoringAppSpecificationProperty = ValueList Prelude.Text
  set newValue MonitoringAppSpecificationProperty {..}
    = MonitoringAppSpecificationProperty
        {containerEntrypoint = Prelude.pure newValue, ..}
instance Property "ImageUri" MonitoringAppSpecificationProperty where
  type PropertyType "ImageUri" MonitoringAppSpecificationProperty = Value Prelude.Text
  set newValue MonitoringAppSpecificationProperty {..}
    = MonitoringAppSpecificationProperty {imageUri = newValue, ..}
instance Property "PostAnalyticsProcessorSourceUri" MonitoringAppSpecificationProperty where
  type PropertyType "PostAnalyticsProcessorSourceUri" MonitoringAppSpecificationProperty = Value Prelude.Text
  set newValue MonitoringAppSpecificationProperty {..}
    = MonitoringAppSpecificationProperty
        {postAnalyticsProcessorSourceUri = Prelude.pure newValue, ..}
instance Property "RecordPreprocessorSourceUri" MonitoringAppSpecificationProperty where
  type PropertyType "RecordPreprocessorSourceUri" MonitoringAppSpecificationProperty = Value Prelude.Text
  set newValue MonitoringAppSpecificationProperty {..}
    = MonitoringAppSpecificationProperty
        {recordPreprocessorSourceUri = Prelude.pure newValue, ..}
module Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty (
        MetricsSourceProperty(..), mkMetricsSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricsSourceProperty
  = MetricsSourceProperty {contentDigest :: (Prelude.Maybe (Value Prelude.Text)),
                           contentType :: (Value Prelude.Text),
                           s3Uri :: (Value Prelude.Text)}
mkMetricsSourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetricsSourceProperty
mkMetricsSourceProperty contentType s3Uri
  = MetricsSourceProperty
      {contentType = contentType, s3Uri = s3Uri,
       contentDigest = Prelude.Nothing}
instance ToResourceProperties MetricsSourceProperty where
  toResourceProperties MetricsSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.MetricsSource",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContentType" JSON..= contentType, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentDigest" Prelude.<$> contentDigest]))}
instance JSON.ToJSON MetricsSourceProperty where
  toJSON MetricsSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContentType" JSON..= contentType, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "ContentDigest" Prelude.<$> contentDigest])))
instance Property "ContentDigest" MetricsSourceProperty where
  type PropertyType "ContentDigest" MetricsSourceProperty = Value Prelude.Text
  set newValue MetricsSourceProperty {..}
    = MetricsSourceProperty {contentDigest = Prelude.pure newValue, ..}
instance Property "ContentType" MetricsSourceProperty where
  type PropertyType "ContentType" MetricsSourceProperty = Value Prelude.Text
  set newValue MetricsSourceProperty {..}
    = MetricsSourceProperty {contentType = newValue, ..}
instance Property "S3Uri" MetricsSourceProperty where
  type PropertyType "S3Uri" MetricsSourceProperty = Value Prelude.Text
  set newValue MetricsSourceProperty {..}
    = MetricsSourceProperty {s3Uri = newValue, ..}
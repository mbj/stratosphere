module Stratosphere.S3.StorageLens.AdvancedDataProtectionMetricsProperty (
        AdvancedDataProtectionMetricsProperty(..),
        mkAdvancedDataProtectionMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedDataProtectionMetricsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-advanceddataprotectionmetrics.html>
    AdvancedDataProtectionMetricsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-advanceddataprotectionmetrics.html#cfn-s3-storagelens-advanceddataprotectionmetrics-isenabled>
                                           isEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedDataProtectionMetricsProperty ::
  AdvancedDataProtectionMetricsProperty
mkAdvancedDataProtectionMetricsProperty
  = AdvancedDataProtectionMetricsProperty
      {isEnabled = Prelude.Nothing}
instance ToResourceProperties AdvancedDataProtectionMetricsProperty where
  toResourceProperties AdvancedDataProtectionMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.AdvancedDataProtectionMetrics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled])}
instance JSON.ToJSON AdvancedDataProtectionMetricsProperty where
  toJSON AdvancedDataProtectionMetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled]))
instance Property "IsEnabled" AdvancedDataProtectionMetricsProperty where
  type PropertyType "IsEnabled" AdvancedDataProtectionMetricsProperty = Value Prelude.Bool
  set newValue AdvancedDataProtectionMetricsProperty {}
    = AdvancedDataProtectionMetricsProperty
        {isEnabled = Prelude.pure newValue, ..}
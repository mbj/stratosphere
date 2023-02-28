module Stratosphere.S3ObjectLambda.AccessPoint.ObjectLambdaConfigurationProperty (
        module Exports, ObjectLambdaConfigurationProperty(..),
        mkObjectLambdaConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3ObjectLambda.AccessPoint.TransformationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectLambdaConfigurationProperty
  = ObjectLambdaConfigurationProperty {allowedFeatures :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       cloudWatchMetricsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                       supportingAccessPoint :: (Value Prelude.Text),
                                       transformationConfigurations :: [TransformationConfigurationProperty]}
mkObjectLambdaConfigurationProperty ::
  Value Prelude.Text
  -> [TransformationConfigurationProperty]
     -> ObjectLambdaConfigurationProperty
mkObjectLambdaConfigurationProperty
  supportingAccessPoint
  transformationConfigurations
  = ObjectLambdaConfigurationProperty
      {supportingAccessPoint = supportingAccessPoint,
       transformationConfigurations = transformationConfigurations,
       allowedFeatures = Prelude.Nothing,
       cloudWatchMetricsEnabled = Prelude.Nothing}
instance ToResourceProperties ObjectLambdaConfigurationProperty where
  toResourceProperties ObjectLambdaConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint.ObjectLambdaConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SupportingAccessPoint" JSON..= supportingAccessPoint,
                            "TransformationConfigurations"
                              JSON..= transformationConfigurations]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedFeatures" Prelude.<$> allowedFeatures,
                               (JSON..=) "CloudWatchMetricsEnabled"
                                 Prelude.<$> cloudWatchMetricsEnabled]))}
instance JSON.ToJSON ObjectLambdaConfigurationProperty where
  toJSON ObjectLambdaConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SupportingAccessPoint" JSON..= supportingAccessPoint,
               "TransformationConfigurations"
                 JSON..= transformationConfigurations]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedFeatures" Prelude.<$> allowedFeatures,
                  (JSON..=) "CloudWatchMetricsEnabled"
                    Prelude.<$> cloudWatchMetricsEnabled])))
instance Property "AllowedFeatures" ObjectLambdaConfigurationProperty where
  type PropertyType "AllowedFeatures" ObjectLambdaConfigurationProperty = ValueList Prelude.Text
  set newValue ObjectLambdaConfigurationProperty {..}
    = ObjectLambdaConfigurationProperty
        {allowedFeatures = Prelude.pure newValue, ..}
instance Property "CloudWatchMetricsEnabled" ObjectLambdaConfigurationProperty where
  type PropertyType "CloudWatchMetricsEnabled" ObjectLambdaConfigurationProperty = Value Prelude.Bool
  set newValue ObjectLambdaConfigurationProperty {..}
    = ObjectLambdaConfigurationProperty
        {cloudWatchMetricsEnabled = Prelude.pure newValue, ..}
instance Property "SupportingAccessPoint" ObjectLambdaConfigurationProperty where
  type PropertyType "SupportingAccessPoint" ObjectLambdaConfigurationProperty = Value Prelude.Text
  set newValue ObjectLambdaConfigurationProperty {..}
    = ObjectLambdaConfigurationProperty
        {supportingAccessPoint = newValue, ..}
instance Property "TransformationConfigurations" ObjectLambdaConfigurationProperty where
  type PropertyType "TransformationConfigurations" ObjectLambdaConfigurationProperty = [TransformationConfigurationProperty]
  set newValue ObjectLambdaConfigurationProperty {..}
    = ObjectLambdaConfigurationProperty
        {transformationConfigurations = newValue, ..}
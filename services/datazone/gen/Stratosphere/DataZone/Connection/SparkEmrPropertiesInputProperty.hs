module Stratosphere.DataZone.Connection.SparkEmrPropertiesInputProperty (
        SparkEmrPropertiesInputProperty(..),
        mkSparkEmrPropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SparkEmrPropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkemrpropertiesinput.html>
    SparkEmrPropertiesInputProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkemrpropertiesinput.html#cfn-datazone-connection-sparkemrpropertiesinput-computearn>
                                     computeArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkemrpropertiesinput.html#cfn-datazone-connection-sparkemrpropertiesinput-instanceprofilearn>
                                     instanceProfileArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkemrpropertiesinput.html#cfn-datazone-connection-sparkemrpropertiesinput-javavirtualenv>
                                     javaVirtualEnv :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkemrpropertiesinput.html#cfn-datazone-connection-sparkemrpropertiesinput-loguri>
                                     logUri :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkemrpropertiesinput.html#cfn-datazone-connection-sparkemrpropertiesinput-pythonvirtualenv>
                                     pythonVirtualEnv :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkemrpropertiesinput.html#cfn-datazone-connection-sparkemrpropertiesinput-runtimerole>
                                     runtimeRole :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkemrpropertiesinput.html#cfn-datazone-connection-sparkemrpropertiesinput-trustedcertificatess3uri>
                                     trustedCertificatesS3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSparkEmrPropertiesInputProperty ::
  SparkEmrPropertiesInputProperty
mkSparkEmrPropertiesInputProperty
  = SparkEmrPropertiesInputProperty
      {haddock_workaround_ = (), computeArn = Prelude.Nothing,
       instanceProfileArn = Prelude.Nothing,
       javaVirtualEnv = Prelude.Nothing, logUri = Prelude.Nothing,
       pythonVirtualEnv = Prelude.Nothing, runtimeRole = Prelude.Nothing,
       trustedCertificatesS3Uri = Prelude.Nothing}
instance ToResourceProperties SparkEmrPropertiesInputProperty where
  toResourceProperties SparkEmrPropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.SparkEmrPropertiesInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputeArn" Prelude.<$> computeArn,
                            (JSON..=) "InstanceProfileArn" Prelude.<$> instanceProfileArn,
                            (JSON..=) "JavaVirtualEnv" Prelude.<$> javaVirtualEnv,
                            (JSON..=) "LogUri" Prelude.<$> logUri,
                            (JSON..=) "PythonVirtualEnv" Prelude.<$> pythonVirtualEnv,
                            (JSON..=) "RuntimeRole" Prelude.<$> runtimeRole,
                            (JSON..=) "TrustedCertificatesS3Uri"
                              Prelude.<$> trustedCertificatesS3Uri])}
instance JSON.ToJSON SparkEmrPropertiesInputProperty where
  toJSON SparkEmrPropertiesInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputeArn" Prelude.<$> computeArn,
               (JSON..=) "InstanceProfileArn" Prelude.<$> instanceProfileArn,
               (JSON..=) "JavaVirtualEnv" Prelude.<$> javaVirtualEnv,
               (JSON..=) "LogUri" Prelude.<$> logUri,
               (JSON..=) "PythonVirtualEnv" Prelude.<$> pythonVirtualEnv,
               (JSON..=) "RuntimeRole" Prelude.<$> runtimeRole,
               (JSON..=) "TrustedCertificatesS3Uri"
                 Prelude.<$> trustedCertificatesS3Uri]))
instance Property "ComputeArn" SparkEmrPropertiesInputProperty where
  type PropertyType "ComputeArn" SparkEmrPropertiesInputProperty = Value Prelude.Text
  set newValue SparkEmrPropertiesInputProperty {..}
    = SparkEmrPropertiesInputProperty
        {computeArn = Prelude.pure newValue, ..}
instance Property "InstanceProfileArn" SparkEmrPropertiesInputProperty where
  type PropertyType "InstanceProfileArn" SparkEmrPropertiesInputProperty = Value Prelude.Text
  set newValue SparkEmrPropertiesInputProperty {..}
    = SparkEmrPropertiesInputProperty
        {instanceProfileArn = Prelude.pure newValue, ..}
instance Property "JavaVirtualEnv" SparkEmrPropertiesInputProperty where
  type PropertyType "JavaVirtualEnv" SparkEmrPropertiesInputProperty = Value Prelude.Text
  set newValue SparkEmrPropertiesInputProperty {..}
    = SparkEmrPropertiesInputProperty
        {javaVirtualEnv = Prelude.pure newValue, ..}
instance Property "LogUri" SparkEmrPropertiesInputProperty where
  type PropertyType "LogUri" SparkEmrPropertiesInputProperty = Value Prelude.Text
  set newValue SparkEmrPropertiesInputProperty {..}
    = SparkEmrPropertiesInputProperty
        {logUri = Prelude.pure newValue, ..}
instance Property "PythonVirtualEnv" SparkEmrPropertiesInputProperty where
  type PropertyType "PythonVirtualEnv" SparkEmrPropertiesInputProperty = Value Prelude.Text
  set newValue SparkEmrPropertiesInputProperty {..}
    = SparkEmrPropertiesInputProperty
        {pythonVirtualEnv = Prelude.pure newValue, ..}
instance Property "RuntimeRole" SparkEmrPropertiesInputProperty where
  type PropertyType "RuntimeRole" SparkEmrPropertiesInputProperty = Value Prelude.Text
  set newValue SparkEmrPropertiesInputProperty {..}
    = SparkEmrPropertiesInputProperty
        {runtimeRole = Prelude.pure newValue, ..}
instance Property "TrustedCertificatesS3Uri" SparkEmrPropertiesInputProperty where
  type PropertyType "TrustedCertificatesS3Uri" SparkEmrPropertiesInputProperty = Value Prelude.Text
  set newValue SparkEmrPropertiesInputProperty {..}
    = SparkEmrPropertiesInputProperty
        {trustedCertificatesS3Uri = Prelude.pure newValue, ..}
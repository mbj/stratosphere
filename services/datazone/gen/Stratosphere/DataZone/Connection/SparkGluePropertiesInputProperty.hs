module Stratosphere.DataZone.Connection.SparkGluePropertiesInputProperty (
        module Exports, SparkGluePropertiesInputProperty(..),
        mkSparkGluePropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.SparkGlueArgsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SparkGluePropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html>
    SparkGluePropertiesInputProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html#cfn-datazone-connection-sparkgluepropertiesinput-additionalargs>
                                      additionalArgs :: (Prelude.Maybe SparkGlueArgsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html#cfn-datazone-connection-sparkgluepropertiesinput-glueconnectionname>
                                      glueConnectionName :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html#cfn-datazone-connection-sparkgluepropertiesinput-glueversion>
                                      glueVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html#cfn-datazone-connection-sparkgluepropertiesinput-idletimeout>
                                      idleTimeout :: (Prelude.Maybe (Value Prelude.Double)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html#cfn-datazone-connection-sparkgluepropertiesinput-javavirtualenv>
                                      javaVirtualEnv :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html#cfn-datazone-connection-sparkgluepropertiesinput-numberofworkers>
                                      numberOfWorkers :: (Prelude.Maybe (Value Prelude.Double)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html#cfn-datazone-connection-sparkgluepropertiesinput-pythonvirtualenv>
                                      pythonVirtualEnv :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-sparkgluepropertiesinput.html#cfn-datazone-connection-sparkgluepropertiesinput-workertype>
                                      workerType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSparkGluePropertiesInputProperty ::
  SparkGluePropertiesInputProperty
mkSparkGluePropertiesInputProperty
  = SparkGluePropertiesInputProperty
      {haddock_workaround_ = (), additionalArgs = Prelude.Nothing,
       glueConnectionName = Prelude.Nothing,
       glueVersion = Prelude.Nothing, idleTimeout = Prelude.Nothing,
       javaVirtualEnv = Prelude.Nothing,
       numberOfWorkers = Prelude.Nothing,
       pythonVirtualEnv = Prelude.Nothing, workerType = Prelude.Nothing}
instance ToResourceProperties SparkGluePropertiesInputProperty where
  toResourceProperties SparkGluePropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.SparkGluePropertiesInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalArgs" Prelude.<$> additionalArgs,
                            (JSON..=) "GlueConnectionName" Prelude.<$> glueConnectionName,
                            (JSON..=) "GlueVersion" Prelude.<$> glueVersion,
                            (JSON..=) "IdleTimeout" Prelude.<$> idleTimeout,
                            (JSON..=) "JavaVirtualEnv" Prelude.<$> javaVirtualEnv,
                            (JSON..=) "NumberOfWorkers" Prelude.<$> numberOfWorkers,
                            (JSON..=) "PythonVirtualEnv" Prelude.<$> pythonVirtualEnv,
                            (JSON..=) "WorkerType" Prelude.<$> workerType])}
instance JSON.ToJSON SparkGluePropertiesInputProperty where
  toJSON SparkGluePropertiesInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalArgs" Prelude.<$> additionalArgs,
               (JSON..=) "GlueConnectionName" Prelude.<$> glueConnectionName,
               (JSON..=) "GlueVersion" Prelude.<$> glueVersion,
               (JSON..=) "IdleTimeout" Prelude.<$> idleTimeout,
               (JSON..=) "JavaVirtualEnv" Prelude.<$> javaVirtualEnv,
               (JSON..=) "NumberOfWorkers" Prelude.<$> numberOfWorkers,
               (JSON..=) "PythonVirtualEnv" Prelude.<$> pythonVirtualEnv,
               (JSON..=) "WorkerType" Prelude.<$> workerType]))
instance Property "AdditionalArgs" SparkGluePropertiesInputProperty where
  type PropertyType "AdditionalArgs" SparkGluePropertiesInputProperty = SparkGlueArgsProperty
  set newValue SparkGluePropertiesInputProperty {..}
    = SparkGluePropertiesInputProperty
        {additionalArgs = Prelude.pure newValue, ..}
instance Property "GlueConnectionName" SparkGluePropertiesInputProperty where
  type PropertyType "GlueConnectionName" SparkGluePropertiesInputProperty = Value Prelude.Text
  set newValue SparkGluePropertiesInputProperty {..}
    = SparkGluePropertiesInputProperty
        {glueConnectionName = Prelude.pure newValue, ..}
instance Property "GlueVersion" SparkGluePropertiesInputProperty where
  type PropertyType "GlueVersion" SparkGluePropertiesInputProperty = Value Prelude.Text
  set newValue SparkGluePropertiesInputProperty {..}
    = SparkGluePropertiesInputProperty
        {glueVersion = Prelude.pure newValue, ..}
instance Property "IdleTimeout" SparkGluePropertiesInputProperty where
  type PropertyType "IdleTimeout" SparkGluePropertiesInputProperty = Value Prelude.Double
  set newValue SparkGluePropertiesInputProperty {..}
    = SparkGluePropertiesInputProperty
        {idleTimeout = Prelude.pure newValue, ..}
instance Property "JavaVirtualEnv" SparkGluePropertiesInputProperty where
  type PropertyType "JavaVirtualEnv" SparkGluePropertiesInputProperty = Value Prelude.Text
  set newValue SparkGluePropertiesInputProperty {..}
    = SparkGluePropertiesInputProperty
        {javaVirtualEnv = Prelude.pure newValue, ..}
instance Property "NumberOfWorkers" SparkGluePropertiesInputProperty where
  type PropertyType "NumberOfWorkers" SparkGluePropertiesInputProperty = Value Prelude.Double
  set newValue SparkGluePropertiesInputProperty {..}
    = SparkGluePropertiesInputProperty
        {numberOfWorkers = Prelude.pure newValue, ..}
instance Property "PythonVirtualEnv" SparkGluePropertiesInputProperty where
  type PropertyType "PythonVirtualEnv" SparkGluePropertiesInputProperty = Value Prelude.Text
  set newValue SparkGluePropertiesInputProperty {..}
    = SparkGluePropertiesInputProperty
        {pythonVirtualEnv = Prelude.pure newValue, ..}
instance Property "WorkerType" SparkGluePropertiesInputProperty where
  type PropertyType "WorkerType" SparkGluePropertiesInputProperty = Value Prelude.Text
  set newValue SparkGluePropertiesInputProperty {..}
    = SparkGluePropertiesInputProperty
        {workerType = Prelude.pure newValue, ..}
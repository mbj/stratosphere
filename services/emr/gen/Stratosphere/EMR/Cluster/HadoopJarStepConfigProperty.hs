module Stratosphere.EMR.Cluster.HadoopJarStepConfigProperty (
        module Exports, HadoopJarStepConfigProperty(..),
        mkHadoopJarStepConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.KeyValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HadoopJarStepConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html>
    HadoopJarStepConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html#cfn-elasticmapreduce-cluster-hadoopjarstepconfig-args>
                                 args :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html#cfn-elasticmapreduce-cluster-hadoopjarstepconfig-jar>
                                 jar :: (Value Prelude.Text),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html#cfn-elasticmapreduce-cluster-hadoopjarstepconfig-mainclass>
                                 mainClass :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-hadoopjarstepconfig.html#cfn-elasticmapreduce-cluster-hadoopjarstepconfig-stepproperties>
                                 stepProperties :: (Prelude.Maybe [KeyValueProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHadoopJarStepConfigProperty ::
  Value Prelude.Text -> HadoopJarStepConfigProperty
mkHadoopJarStepConfigProperty jar
  = HadoopJarStepConfigProperty
      {jar = jar, args = Prelude.Nothing, mainClass = Prelude.Nothing,
       stepProperties = Prelude.Nothing}
instance ToResourceProperties HadoopJarStepConfigProperty where
  toResourceProperties HadoopJarStepConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.HadoopJarStepConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Jar" JSON..= jar]
                           (Prelude.catMaybes
                              [(JSON..=) "Args" Prelude.<$> args,
                               (JSON..=) "MainClass" Prelude.<$> mainClass,
                               (JSON..=) "StepProperties" Prelude.<$> stepProperties]))}
instance JSON.ToJSON HadoopJarStepConfigProperty where
  toJSON HadoopJarStepConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Jar" JSON..= jar]
              (Prelude.catMaybes
                 [(JSON..=) "Args" Prelude.<$> args,
                  (JSON..=) "MainClass" Prelude.<$> mainClass,
                  (JSON..=) "StepProperties" Prelude.<$> stepProperties])))
instance Property "Args" HadoopJarStepConfigProperty where
  type PropertyType "Args" HadoopJarStepConfigProperty = ValueList Prelude.Text
  set newValue HadoopJarStepConfigProperty {..}
    = HadoopJarStepConfigProperty {args = Prelude.pure newValue, ..}
instance Property "Jar" HadoopJarStepConfigProperty where
  type PropertyType "Jar" HadoopJarStepConfigProperty = Value Prelude.Text
  set newValue HadoopJarStepConfigProperty {..}
    = HadoopJarStepConfigProperty {jar = newValue, ..}
instance Property "MainClass" HadoopJarStepConfigProperty where
  type PropertyType "MainClass" HadoopJarStepConfigProperty = Value Prelude.Text
  set newValue HadoopJarStepConfigProperty {..}
    = HadoopJarStepConfigProperty
        {mainClass = Prelude.pure newValue, ..}
instance Property "StepProperties" HadoopJarStepConfigProperty where
  type PropertyType "StepProperties" HadoopJarStepConfigProperty = [KeyValueProperty]
  set newValue HadoopJarStepConfigProperty {..}
    = HadoopJarStepConfigProperty
        {stepProperties = Prelude.pure newValue, ..}
module Stratosphere.KinesisAnalyticsV2.Application.ParallelismConfigurationProperty (
        ParallelismConfigurationProperty(..),
        mkParallelismConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParallelismConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html>
    ParallelismConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-autoscalingenabled>
                                      autoScalingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-configurationtype>
                                      configurationType :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelism>
                                      parallelism :: (Prelude.Maybe (Value Prelude.Integer)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelismperkpu>
                                      parallelismPerKPU :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParallelismConfigurationProperty ::
  Value Prelude.Text -> ParallelismConfigurationProperty
mkParallelismConfigurationProperty configurationType
  = ParallelismConfigurationProperty
      {haddock_workaround_ = (), configurationType = configurationType,
       autoScalingEnabled = Prelude.Nothing,
       parallelism = Prelude.Nothing, parallelismPerKPU = Prelude.Nothing}
instance ToResourceProperties ParallelismConfigurationProperty where
  toResourceProperties ParallelismConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ParallelismConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationType" JSON..= configurationType]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoScalingEnabled" Prelude.<$> autoScalingEnabled,
                               (JSON..=) "Parallelism" Prelude.<$> parallelism,
                               (JSON..=) "ParallelismPerKPU" Prelude.<$> parallelismPerKPU]))}
instance JSON.ToJSON ParallelismConfigurationProperty where
  toJSON ParallelismConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationType" JSON..= configurationType]
              (Prelude.catMaybes
                 [(JSON..=) "AutoScalingEnabled" Prelude.<$> autoScalingEnabled,
                  (JSON..=) "Parallelism" Prelude.<$> parallelism,
                  (JSON..=) "ParallelismPerKPU" Prelude.<$> parallelismPerKPU])))
instance Property "AutoScalingEnabled" ParallelismConfigurationProperty where
  type PropertyType "AutoScalingEnabled" ParallelismConfigurationProperty = Value Prelude.Bool
  set newValue ParallelismConfigurationProperty {..}
    = ParallelismConfigurationProperty
        {autoScalingEnabled = Prelude.pure newValue, ..}
instance Property "ConfigurationType" ParallelismConfigurationProperty where
  type PropertyType "ConfigurationType" ParallelismConfigurationProperty = Value Prelude.Text
  set newValue ParallelismConfigurationProperty {..}
    = ParallelismConfigurationProperty
        {configurationType = newValue, ..}
instance Property "Parallelism" ParallelismConfigurationProperty where
  type PropertyType "Parallelism" ParallelismConfigurationProperty = Value Prelude.Integer
  set newValue ParallelismConfigurationProperty {..}
    = ParallelismConfigurationProperty
        {parallelism = Prelude.pure newValue, ..}
instance Property "ParallelismPerKPU" ParallelismConfigurationProperty where
  type PropertyType "ParallelismPerKPU" ParallelismConfigurationProperty = Value Prelude.Integer
  set newValue ParallelismConfigurationProperty {..}
    = ParallelismConfigurationProperty
        {parallelismPerKPU = Prelude.pure newValue, ..}
module Stratosphere.AppRunner.AutoScalingConfiguration (
        AutoScalingConfiguration(..), mkAutoScalingConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AutoScalingConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-autoscalingconfiguration.html>
    AutoScalingConfiguration {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-autoscalingconfiguration.html#cfn-apprunner-autoscalingconfiguration-autoscalingconfigurationname>
                              autoScalingConfigurationName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-autoscalingconfiguration.html#cfn-apprunner-autoscalingconfiguration-maxconcurrency>
                              maxConcurrency :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-autoscalingconfiguration.html#cfn-apprunner-autoscalingconfiguration-maxsize>
                              maxSize :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-autoscalingconfiguration.html#cfn-apprunner-autoscalingconfiguration-minsize>
                              minSize :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-autoscalingconfiguration.html#cfn-apprunner-autoscalingconfiguration-tags>
                              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoScalingConfiguration :: AutoScalingConfiguration
mkAutoScalingConfiguration
  = AutoScalingConfiguration
      {haddock_workaround_ = (),
       autoScalingConfigurationName = Prelude.Nothing,
       maxConcurrency = Prelude.Nothing, maxSize = Prelude.Nothing,
       minSize = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AutoScalingConfiguration where
  toResourceProperties AutoScalingConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::AutoScalingConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoScalingConfigurationName"
                              Prelude.<$> autoScalingConfigurationName,
                            (JSON..=) "MaxConcurrency" Prelude.<$> maxConcurrency,
                            (JSON..=) "MaxSize" Prelude.<$> maxSize,
                            (JSON..=) "MinSize" Prelude.<$> minSize,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON AutoScalingConfiguration where
  toJSON AutoScalingConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoScalingConfigurationName"
                 Prelude.<$> autoScalingConfigurationName,
               (JSON..=) "MaxConcurrency" Prelude.<$> maxConcurrency,
               (JSON..=) "MaxSize" Prelude.<$> maxSize,
               (JSON..=) "MinSize" Prelude.<$> minSize,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AutoScalingConfigurationName" AutoScalingConfiguration where
  type PropertyType "AutoScalingConfigurationName" AutoScalingConfiguration = Value Prelude.Text
  set newValue AutoScalingConfiguration {..}
    = AutoScalingConfiguration
        {autoScalingConfigurationName = Prelude.pure newValue, ..}
instance Property "MaxConcurrency" AutoScalingConfiguration where
  type PropertyType "MaxConcurrency" AutoScalingConfiguration = Value Prelude.Integer
  set newValue AutoScalingConfiguration {..}
    = AutoScalingConfiguration
        {maxConcurrency = Prelude.pure newValue, ..}
instance Property "MaxSize" AutoScalingConfiguration where
  type PropertyType "MaxSize" AutoScalingConfiguration = Value Prelude.Integer
  set newValue AutoScalingConfiguration {..}
    = AutoScalingConfiguration {maxSize = Prelude.pure newValue, ..}
instance Property "MinSize" AutoScalingConfiguration where
  type PropertyType "MinSize" AutoScalingConfiguration = Value Prelude.Integer
  set newValue AutoScalingConfiguration {..}
    = AutoScalingConfiguration {minSize = Prelude.pure newValue, ..}
instance Property "Tags" AutoScalingConfiguration where
  type PropertyType "Tags" AutoScalingConfiguration = [Tag]
  set newValue AutoScalingConfiguration {..}
    = AutoScalingConfiguration {tags = Prelude.pure newValue, ..}
module Stratosphere.EC2.LaunchTemplate.LaunchTemplateElasticInferenceAcceleratorProperty (
        LaunchTemplateElasticInferenceAcceleratorProperty(..),
        mkLaunchTemplateElasticInferenceAcceleratorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateElasticInferenceAcceleratorProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html>
    LaunchTemplateElasticInferenceAcceleratorProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html#cfn-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator-count>
                                                       count :: (Prelude.Maybe (Value Prelude.Integer)),
                                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html#cfn-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator-type>
                                                       type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateElasticInferenceAcceleratorProperty ::
  LaunchTemplateElasticInferenceAcceleratorProperty
mkLaunchTemplateElasticInferenceAcceleratorProperty
  = LaunchTemplateElasticInferenceAcceleratorProperty
      {count = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateElasticInferenceAcceleratorProperty where
  toResourceProperties
    LaunchTemplateElasticInferenceAcceleratorProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.LaunchTemplateElasticInferenceAccelerator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON LaunchTemplateElasticInferenceAcceleratorProperty where
  toJSON LaunchTemplateElasticInferenceAcceleratorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Count" LaunchTemplateElasticInferenceAcceleratorProperty where
  type PropertyType "Count" LaunchTemplateElasticInferenceAcceleratorProperty = Value Prelude.Integer
  set newValue LaunchTemplateElasticInferenceAcceleratorProperty {..}
    = LaunchTemplateElasticInferenceAcceleratorProperty
        {count = Prelude.pure newValue, ..}
instance Property "Type" LaunchTemplateElasticInferenceAcceleratorProperty where
  type PropertyType "Type" LaunchTemplateElasticInferenceAcceleratorProperty = Value Prelude.Text
  set newValue LaunchTemplateElasticInferenceAcceleratorProperty {..}
    = LaunchTemplateElasticInferenceAcceleratorProperty
        {type' = Prelude.pure newValue, ..}
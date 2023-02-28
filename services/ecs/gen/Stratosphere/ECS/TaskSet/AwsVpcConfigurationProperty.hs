module Stratosphere.ECS.TaskSet.AwsVpcConfigurationProperty (
        AwsVpcConfigurationProperty(..), mkAwsVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsVpcConfigurationProperty
  = AwsVpcConfigurationProperty {assignPublicIp :: (Prelude.Maybe (Value Prelude.Text)),
                                 securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 subnets :: (ValueList Prelude.Text)}
mkAwsVpcConfigurationProperty ::
  ValueList Prelude.Text -> AwsVpcConfigurationProperty
mkAwsVpcConfigurationProperty subnets
  = AwsVpcConfigurationProperty
      {subnets = subnets, assignPublicIp = Prelude.Nothing,
       securityGroups = Prelude.Nothing}
instance ToResourceProperties AwsVpcConfigurationProperty where
  toResourceProperties AwsVpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskSet.AwsVpcConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Subnets" JSON..= subnets]
                           (Prelude.catMaybes
                              [(JSON..=) "AssignPublicIp" Prelude.<$> assignPublicIp,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups]))}
instance JSON.ToJSON AwsVpcConfigurationProperty where
  toJSON AwsVpcConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Subnets" JSON..= subnets]
              (Prelude.catMaybes
                 [(JSON..=) "AssignPublicIp" Prelude.<$> assignPublicIp,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups])))
instance Property "AssignPublicIp" AwsVpcConfigurationProperty where
  type PropertyType "AssignPublicIp" AwsVpcConfigurationProperty = Value Prelude.Text
  set newValue AwsVpcConfigurationProperty {..}
    = AwsVpcConfigurationProperty
        {assignPublicIp = Prelude.pure newValue, ..}
instance Property "SecurityGroups" AwsVpcConfigurationProperty where
  type PropertyType "SecurityGroups" AwsVpcConfigurationProperty = ValueList Prelude.Text
  set newValue AwsVpcConfigurationProperty {..}
    = AwsVpcConfigurationProperty
        {securityGroups = Prelude.pure newValue, ..}
instance Property "Subnets" AwsVpcConfigurationProperty where
  type PropertyType "Subnets" AwsVpcConfigurationProperty = ValueList Prelude.Text
  set newValue AwsVpcConfigurationProperty {..}
    = AwsVpcConfigurationProperty {subnets = newValue, ..}
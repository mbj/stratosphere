module Stratosphere.ECS.Service.AwsVpcConfigurationProperty (
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
                                 subnets :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsVpcConfigurationProperty :: AwsVpcConfigurationProperty
mkAwsVpcConfigurationProperty
  = AwsVpcConfigurationProperty
      {assignPublicIp = Prelude.Nothing,
       securityGroups = Prelude.Nothing, subnets = Prelude.Nothing}
instance ToResourceProperties AwsVpcConfigurationProperty where
  toResourceProperties AwsVpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.AwsVpcConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssignPublicIp" Prelude.<$> assignPublicIp,
                            (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                            (JSON..=) "Subnets" Prelude.<$> subnets])}
instance JSON.ToJSON AwsVpcConfigurationProperty where
  toJSON AwsVpcConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssignPublicIp" Prelude.<$> assignPublicIp,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "Subnets" Prelude.<$> subnets]))
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
    = AwsVpcConfigurationProperty {subnets = Prelude.pure newValue, ..}
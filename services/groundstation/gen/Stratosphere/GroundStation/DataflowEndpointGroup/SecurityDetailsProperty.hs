module Stratosphere.GroundStation.DataflowEndpointGroup.SecurityDetailsProperty (
        SecurityDetailsProperty(..), mkSecurityDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityDetailsProperty
  = SecurityDetailsProperty {roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                             subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityDetailsProperty :: SecurityDetailsProperty
mkSecurityDetailsProperty
  = SecurityDetailsProperty
      {roleArn = Prelude.Nothing, securityGroupIds = Prelude.Nothing,
       subnetIds = Prelude.Nothing}
instance ToResourceProperties SecurityDetailsProperty where
  toResourceProperties SecurityDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.SecurityDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON SecurityDetailsProperty where
  toJSON SecurityDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "RoleArn" SecurityDetailsProperty where
  type PropertyType "RoleArn" SecurityDetailsProperty = Value Prelude.Text
  set newValue SecurityDetailsProperty {..}
    = SecurityDetailsProperty {roleArn = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" SecurityDetailsProperty where
  type PropertyType "SecurityGroupIds" SecurityDetailsProperty = ValueList Prelude.Text
  set newValue SecurityDetailsProperty {..}
    = SecurityDetailsProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" SecurityDetailsProperty where
  type PropertyType "SubnetIds" SecurityDetailsProperty = ValueList Prelude.Text
  set newValue SecurityDetailsProperty {..}
    = SecurityDetailsProperty {subnetIds = Prelude.pure newValue, ..}
module Stratosphere.APS.Scraper.EksConfigurationProperty (
        EksConfigurationProperty(..), mkEksConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksConfigurationProperty
  = EksConfigurationProperty {clusterArn :: (Value Prelude.Text),
                              securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                              subnetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksConfigurationProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> EksConfigurationProperty
mkEksConfigurationProperty clusterArn subnetIds
  = EksConfigurationProperty
      {clusterArn = clusterArn, subnetIds = subnetIds,
       securityGroupIds = Prelude.Nothing}
instance ToResourceProperties EksConfigurationProperty where
  toResourceProperties EksConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.EksConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterArn" JSON..= clusterArn, "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds]))}
instance JSON.ToJSON EksConfigurationProperty where
  toJSON EksConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterArn" JSON..= clusterArn, "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds])))
instance Property "ClusterArn" EksConfigurationProperty where
  type PropertyType "ClusterArn" EksConfigurationProperty = Value Prelude.Text
  set newValue EksConfigurationProperty {..}
    = EksConfigurationProperty {clusterArn = newValue, ..}
instance Property "SecurityGroupIds" EksConfigurationProperty where
  type PropertyType "SecurityGroupIds" EksConfigurationProperty = ValueList Prelude.Text
  set newValue EksConfigurationProperty {..}
    = EksConfigurationProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" EksConfigurationProperty where
  type PropertyType "SubnetIds" EksConfigurationProperty = ValueList Prelude.Text
  set newValue EksConfigurationProperty {..}
    = EksConfigurationProperty {subnetIds = newValue, ..}
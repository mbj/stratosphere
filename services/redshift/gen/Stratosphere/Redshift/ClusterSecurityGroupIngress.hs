module Stratosphere.Redshift.ClusterSecurityGroupIngress (
        ClusterSecurityGroupIngress(..), mkClusterSecurityGroupIngress
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterSecurityGroupIngress
  = ClusterSecurityGroupIngress {cIDRIP :: (Prelude.Maybe (Value Prelude.Text)),
                                 clusterSecurityGroupName :: (Value Prelude.Text),
                                 eC2SecurityGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                 eC2SecurityGroupOwnerId :: (Prelude.Maybe (Value Prelude.Text))}
mkClusterSecurityGroupIngress ::
  Value Prelude.Text -> ClusterSecurityGroupIngress
mkClusterSecurityGroupIngress clusterSecurityGroupName
  = ClusterSecurityGroupIngress
      {clusterSecurityGroupName = clusterSecurityGroupName,
       cIDRIP = Prelude.Nothing, eC2SecurityGroupName = Prelude.Nothing,
       eC2SecurityGroupOwnerId = Prelude.Nothing}
instance ToResourceProperties ClusterSecurityGroupIngress where
  toResourceProperties ClusterSecurityGroupIngress {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ClusterSecurityGroupIngress",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterSecurityGroupName" JSON..= clusterSecurityGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "CIDRIP" Prelude.<$> cIDRIP,
                               (JSON..=) "EC2SecurityGroupName" Prelude.<$> eC2SecurityGroupName,
                               (JSON..=) "EC2SecurityGroupOwnerId"
                                 Prelude.<$> eC2SecurityGroupOwnerId]))}
instance JSON.ToJSON ClusterSecurityGroupIngress where
  toJSON ClusterSecurityGroupIngress {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterSecurityGroupName" JSON..= clusterSecurityGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "CIDRIP" Prelude.<$> cIDRIP,
                  (JSON..=) "EC2SecurityGroupName" Prelude.<$> eC2SecurityGroupName,
                  (JSON..=) "EC2SecurityGroupOwnerId"
                    Prelude.<$> eC2SecurityGroupOwnerId])))
instance Property "CIDRIP" ClusterSecurityGroupIngress where
  type PropertyType "CIDRIP" ClusterSecurityGroupIngress = Value Prelude.Text
  set newValue ClusterSecurityGroupIngress {..}
    = ClusterSecurityGroupIngress {cIDRIP = Prelude.pure newValue, ..}
instance Property "ClusterSecurityGroupName" ClusterSecurityGroupIngress where
  type PropertyType "ClusterSecurityGroupName" ClusterSecurityGroupIngress = Value Prelude.Text
  set newValue ClusterSecurityGroupIngress {..}
    = ClusterSecurityGroupIngress
        {clusterSecurityGroupName = newValue, ..}
instance Property "EC2SecurityGroupName" ClusterSecurityGroupIngress where
  type PropertyType "EC2SecurityGroupName" ClusterSecurityGroupIngress = Value Prelude.Text
  set newValue ClusterSecurityGroupIngress {..}
    = ClusterSecurityGroupIngress
        {eC2SecurityGroupName = Prelude.pure newValue, ..}
instance Property "EC2SecurityGroupOwnerId" ClusterSecurityGroupIngress where
  type PropertyType "EC2SecurityGroupOwnerId" ClusterSecurityGroupIngress = Value Prelude.Text
  set newValue ClusterSecurityGroupIngress {..}
    = ClusterSecurityGroupIngress
        {eC2SecurityGroupOwnerId = Prelude.pure newValue, ..}
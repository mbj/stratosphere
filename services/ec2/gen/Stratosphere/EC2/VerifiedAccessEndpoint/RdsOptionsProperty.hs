module Stratosphere.EC2.VerifiedAccessEndpoint.RdsOptionsProperty (
        RdsOptionsProperty(..), mkRdsOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RdsOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-rdsoptions.html>
    RdsOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-rdsoptions.html#cfn-ec2-verifiedaccessendpoint-rdsoptions-port>
                        port :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-rdsoptions.html#cfn-ec2-verifiedaccessendpoint-rdsoptions-protocol>
                        protocol :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-rdsoptions.html#cfn-ec2-verifiedaccessendpoint-rdsoptions-rdsdbclusterarn>
                        rdsDbClusterArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-rdsoptions.html#cfn-ec2-verifiedaccessendpoint-rdsoptions-rdsdbinstancearn>
                        rdsDbInstanceArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-rdsoptions.html#cfn-ec2-verifiedaccessendpoint-rdsoptions-rdsdbproxyarn>
                        rdsDbProxyArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-rdsoptions.html#cfn-ec2-verifiedaccessendpoint-rdsoptions-rdsendpoint>
                        rdsEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-rdsoptions.html#cfn-ec2-verifiedaccessendpoint-rdsoptions-subnetids>
                        subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRdsOptionsProperty :: RdsOptionsProperty
mkRdsOptionsProperty
  = RdsOptionsProperty
      {haddock_workaround_ = (), port = Prelude.Nothing,
       protocol = Prelude.Nothing, rdsDbClusterArn = Prelude.Nothing,
       rdsDbInstanceArn = Prelude.Nothing,
       rdsDbProxyArn = Prelude.Nothing, rdsEndpoint = Prelude.Nothing,
       subnetIds = Prelude.Nothing}
instance ToResourceProperties RdsOptionsProperty where
  toResourceProperties RdsOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessEndpoint.RdsOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "RdsDbClusterArn" Prelude.<$> rdsDbClusterArn,
                            (JSON..=) "RdsDbInstanceArn" Prelude.<$> rdsDbInstanceArn,
                            (JSON..=) "RdsDbProxyArn" Prelude.<$> rdsDbProxyArn,
                            (JSON..=) "RdsEndpoint" Prelude.<$> rdsEndpoint,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON RdsOptionsProperty where
  toJSON RdsOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "RdsDbClusterArn" Prelude.<$> rdsDbClusterArn,
               (JSON..=) "RdsDbInstanceArn" Prelude.<$> rdsDbInstanceArn,
               (JSON..=) "RdsDbProxyArn" Prelude.<$> rdsDbProxyArn,
               (JSON..=) "RdsEndpoint" Prelude.<$> rdsEndpoint,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "Port" RdsOptionsProperty where
  type PropertyType "Port" RdsOptionsProperty = Value Prelude.Integer
  set newValue RdsOptionsProperty {..}
    = RdsOptionsProperty {port = Prelude.pure newValue, ..}
instance Property "Protocol" RdsOptionsProperty where
  type PropertyType "Protocol" RdsOptionsProperty = Value Prelude.Text
  set newValue RdsOptionsProperty {..}
    = RdsOptionsProperty {protocol = Prelude.pure newValue, ..}
instance Property "RdsDbClusterArn" RdsOptionsProperty where
  type PropertyType "RdsDbClusterArn" RdsOptionsProperty = Value Prelude.Text
  set newValue RdsOptionsProperty {..}
    = RdsOptionsProperty {rdsDbClusterArn = Prelude.pure newValue, ..}
instance Property "RdsDbInstanceArn" RdsOptionsProperty where
  type PropertyType "RdsDbInstanceArn" RdsOptionsProperty = Value Prelude.Text
  set newValue RdsOptionsProperty {..}
    = RdsOptionsProperty {rdsDbInstanceArn = Prelude.pure newValue, ..}
instance Property "RdsDbProxyArn" RdsOptionsProperty where
  type PropertyType "RdsDbProxyArn" RdsOptionsProperty = Value Prelude.Text
  set newValue RdsOptionsProperty {..}
    = RdsOptionsProperty {rdsDbProxyArn = Prelude.pure newValue, ..}
instance Property "RdsEndpoint" RdsOptionsProperty where
  type PropertyType "RdsEndpoint" RdsOptionsProperty = Value Prelude.Text
  set newValue RdsOptionsProperty {..}
    = RdsOptionsProperty {rdsEndpoint = Prelude.pure newValue, ..}
instance Property "SubnetIds" RdsOptionsProperty where
  type PropertyType "SubnetIds" RdsOptionsProperty = ValueList Prelude.Text
  set newValue RdsOptionsProperty {..}
    = RdsOptionsProperty {subnetIds = Prelude.pure newValue, ..}
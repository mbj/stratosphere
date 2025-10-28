module Stratosphere.RDS.DBSecurityGroupIngress (
        DBSecurityGroupIngress(..), mkDBSecurityGroupIngress
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DBSecurityGroupIngress
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html>
    DBSecurityGroupIngress {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-cidrip>
                            cIDRIP :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-dbsecuritygroupname>
                            dBSecurityGroupName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupid>
                            eC2SecurityGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupname>
                            eC2SecurityGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-security-group-ingress.html#cfn-rds-securitygroup-ingress-ec2securitygroupownerid>
                            eC2SecurityGroupOwnerId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBSecurityGroupIngress ::
  Value Prelude.Text -> DBSecurityGroupIngress
mkDBSecurityGroupIngress dBSecurityGroupName
  = DBSecurityGroupIngress
      {haddock_workaround_ = (),
       dBSecurityGroupName = dBSecurityGroupName,
       cIDRIP = Prelude.Nothing, eC2SecurityGroupId = Prelude.Nothing,
       eC2SecurityGroupName = Prelude.Nothing,
       eC2SecurityGroupOwnerId = Prelude.Nothing}
instance ToResourceProperties DBSecurityGroupIngress where
  toResourceProperties DBSecurityGroupIngress {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBSecurityGroupIngress",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DBSecurityGroupName" JSON..= dBSecurityGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "CIDRIP" Prelude.<$> cIDRIP,
                               (JSON..=) "EC2SecurityGroupId" Prelude.<$> eC2SecurityGroupId,
                               (JSON..=) "EC2SecurityGroupName" Prelude.<$> eC2SecurityGroupName,
                               (JSON..=) "EC2SecurityGroupOwnerId"
                                 Prelude.<$> eC2SecurityGroupOwnerId]))}
instance JSON.ToJSON DBSecurityGroupIngress where
  toJSON DBSecurityGroupIngress {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DBSecurityGroupName" JSON..= dBSecurityGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "CIDRIP" Prelude.<$> cIDRIP,
                  (JSON..=) "EC2SecurityGroupId" Prelude.<$> eC2SecurityGroupId,
                  (JSON..=) "EC2SecurityGroupName" Prelude.<$> eC2SecurityGroupName,
                  (JSON..=) "EC2SecurityGroupOwnerId"
                    Prelude.<$> eC2SecurityGroupOwnerId])))
instance Property "CIDRIP" DBSecurityGroupIngress where
  type PropertyType "CIDRIP" DBSecurityGroupIngress = Value Prelude.Text
  set newValue DBSecurityGroupIngress {..}
    = DBSecurityGroupIngress {cIDRIP = Prelude.pure newValue, ..}
instance Property "DBSecurityGroupName" DBSecurityGroupIngress where
  type PropertyType "DBSecurityGroupName" DBSecurityGroupIngress = Value Prelude.Text
  set newValue DBSecurityGroupIngress {..}
    = DBSecurityGroupIngress {dBSecurityGroupName = newValue, ..}
instance Property "EC2SecurityGroupId" DBSecurityGroupIngress where
  type PropertyType "EC2SecurityGroupId" DBSecurityGroupIngress = Value Prelude.Text
  set newValue DBSecurityGroupIngress {..}
    = DBSecurityGroupIngress
        {eC2SecurityGroupId = Prelude.pure newValue, ..}
instance Property "EC2SecurityGroupName" DBSecurityGroupIngress where
  type PropertyType "EC2SecurityGroupName" DBSecurityGroupIngress = Value Prelude.Text
  set newValue DBSecurityGroupIngress {..}
    = DBSecurityGroupIngress
        {eC2SecurityGroupName = Prelude.pure newValue, ..}
instance Property "EC2SecurityGroupOwnerId" DBSecurityGroupIngress where
  type PropertyType "EC2SecurityGroupOwnerId" DBSecurityGroupIngress = Value Prelude.Text
  set newValue DBSecurityGroupIngress {..}
    = DBSecurityGroupIngress
        {eC2SecurityGroupOwnerId = Prelude.pure newValue, ..}
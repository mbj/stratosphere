module Stratosphere.RDS.DBSecurityGroup (
        module Exports, DBSecurityGroup(..), mkDBSecurityGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.DBSecurityGroup.IngressProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBSecurityGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html>
    DBSecurityGroup {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-dbsecuritygroupingress>
                     dBSecurityGroupIngress :: [IngressProperty],
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-ec2vpcid>
                     eC2VpcId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-groupdescription>
                     groupDescription :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group.html#cfn-rds-dbsecuritygroup-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBSecurityGroup ::
  [IngressProperty] -> Value Prelude.Text -> DBSecurityGroup
mkDBSecurityGroup dBSecurityGroupIngress groupDescription
  = DBSecurityGroup
      {haddock_workaround_ = (),
       dBSecurityGroupIngress = dBSecurityGroupIngress,
       groupDescription = groupDescription, eC2VpcId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DBSecurityGroup where
  toResourceProperties DBSecurityGroup {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBSecurityGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DBSecurityGroupIngress" JSON..= dBSecurityGroupIngress,
                            "GroupDescription" JSON..= groupDescription]
                           (Prelude.catMaybes
                              [(JSON..=) "EC2VpcId" Prelude.<$> eC2VpcId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DBSecurityGroup where
  toJSON DBSecurityGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DBSecurityGroupIngress" JSON..= dBSecurityGroupIngress,
               "GroupDescription" JSON..= groupDescription]
              (Prelude.catMaybes
                 [(JSON..=) "EC2VpcId" Prelude.<$> eC2VpcId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DBSecurityGroupIngress" DBSecurityGroup where
  type PropertyType "DBSecurityGroupIngress" DBSecurityGroup = [IngressProperty]
  set newValue DBSecurityGroup {..}
    = DBSecurityGroup {dBSecurityGroupIngress = newValue, ..}
instance Property "EC2VpcId" DBSecurityGroup where
  type PropertyType "EC2VpcId" DBSecurityGroup = Value Prelude.Text
  set newValue DBSecurityGroup {..}
    = DBSecurityGroup {eC2VpcId = Prelude.pure newValue, ..}
instance Property "GroupDescription" DBSecurityGroup where
  type PropertyType "GroupDescription" DBSecurityGroup = Value Prelude.Text
  set newValue DBSecurityGroup {..}
    = DBSecurityGroup {groupDescription = newValue, ..}
instance Property "Tags" DBSecurityGroup where
  type PropertyType "Tags" DBSecurityGroup = [Tag]
  set newValue DBSecurityGroup {..}
    = DBSecurityGroup {tags = Prelude.pure newValue, ..}
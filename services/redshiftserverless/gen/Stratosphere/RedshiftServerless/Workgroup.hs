module Stratosphere.RedshiftServerless.Workgroup (
        module Exports, Workgroup(..), mkWorkgroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.ConfigParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Workgroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html>
    Workgroup {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-basecapacity>
               baseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-configparameters>
               configParameters :: (Prelude.Maybe [ConfigParameterProperty]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-enhancedvpcrouting>
               enhancedVpcRouting :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-maxcapacity>
               maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-namespacename>
               namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-port>
               port :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-publiclyaccessible>
               publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-securitygroupids>
               securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-subnetids>
               subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-workgroup.html#cfn-redshiftserverless-workgroup-workgroupname>
               workgroupName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkgroup :: Value Prelude.Text -> Workgroup
mkWorkgroup workgroupName
  = Workgroup
      {haddock_workaround_ = (), workgroupName = workgroupName,
       baseCapacity = Prelude.Nothing, configParameters = Prelude.Nothing,
       enhancedVpcRouting = Prelude.Nothing,
       maxCapacity = Prelude.Nothing, namespaceName = Prelude.Nothing,
       port = Prelude.Nothing, publiclyAccessible = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Workgroup where
  toResourceProperties Workgroup {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Workgroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["WorkgroupName" JSON..= workgroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                               (JSON..=) "ConfigParameters" Prelude.<$> configParameters,
                               (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
                               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                               (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Workgroup where
  toJSON Workgroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["WorkgroupName" JSON..= workgroupName]
              (Prelude.catMaybes
                 [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                  (JSON..=) "ConfigParameters" Prelude.<$> configParameters,
                  (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
                  (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                  (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BaseCapacity" Workgroup where
  type PropertyType "BaseCapacity" Workgroup = Value Prelude.Integer
  set newValue Workgroup {..}
    = Workgroup {baseCapacity = Prelude.pure newValue, ..}
instance Property "ConfigParameters" Workgroup where
  type PropertyType "ConfigParameters" Workgroup = [ConfigParameterProperty]
  set newValue Workgroup {..}
    = Workgroup {configParameters = Prelude.pure newValue, ..}
instance Property "EnhancedVpcRouting" Workgroup where
  type PropertyType "EnhancedVpcRouting" Workgroup = Value Prelude.Bool
  set newValue Workgroup {..}
    = Workgroup {enhancedVpcRouting = Prelude.pure newValue, ..}
instance Property "MaxCapacity" Workgroup where
  type PropertyType "MaxCapacity" Workgroup = Value Prelude.Integer
  set newValue Workgroup {..}
    = Workgroup {maxCapacity = Prelude.pure newValue, ..}
instance Property "NamespaceName" Workgroup where
  type PropertyType "NamespaceName" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {namespaceName = Prelude.pure newValue, ..}
instance Property "Port" Workgroup where
  type PropertyType "Port" Workgroup = Value Prelude.Integer
  set newValue Workgroup {..}
    = Workgroup {port = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" Workgroup where
  type PropertyType "PubliclyAccessible" Workgroup = Value Prelude.Bool
  set newValue Workgroup {..}
    = Workgroup {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" Workgroup where
  type PropertyType "SecurityGroupIds" Workgroup = ValueList Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" Workgroup where
  type PropertyType "SubnetIds" Workgroup = ValueList Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" Workgroup where
  type PropertyType "Tags" Workgroup = [Tag]
  set newValue Workgroup {..}
    = Workgroup {tags = Prelude.pure newValue, ..}
instance Property "WorkgroupName" Workgroup where
  type PropertyType "WorkgroupName" Workgroup = Value Prelude.Text
  set newValue Workgroup {..}
    = Workgroup {workgroupName = newValue, ..}
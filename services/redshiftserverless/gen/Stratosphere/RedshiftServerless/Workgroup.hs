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
  = Workgroup {baseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
               configParameters :: (Prelude.Maybe [ConfigParameterProperty]),
               enhancedVpcRouting :: (Prelude.Maybe (Value Prelude.Bool)),
               namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
               port :: (Prelude.Maybe (Value Prelude.Integer)),
               publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
               securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
               subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
               tags :: (Prelude.Maybe [Tag]),
               workgroupName :: (Value Prelude.Text)}
mkWorkgroup :: Value Prelude.Text -> Workgroup
mkWorkgroup workgroupName
  = Workgroup
      {workgroupName = workgroupName, baseCapacity = Prelude.Nothing,
       configParameters = Prelude.Nothing,
       enhancedVpcRouting = Prelude.Nothing,
       namespaceName = Prelude.Nothing, port = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Workgroup where
  toResourceProperties Workgroup {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Workgroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["WorkgroupName" JSON..= workgroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                               (JSON..=) "ConfigParameters" Prelude.<$> configParameters,
                               (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
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
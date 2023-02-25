module Stratosphere.RedshiftServerless.Workgroup.WorkgroupProperty (
        module Exports, WorkgroupProperty(..), mkWorkgroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.ConfigParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.EndpointProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkgroupProperty
  = WorkgroupProperty {baseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                       configParameters :: (Prelude.Maybe [ConfigParameterProperty]),
                       creationDate :: (Prelude.Maybe (Value Prelude.Text)),
                       endpoint :: (Prelude.Maybe EndpointProperty),
                       enhancedVpcRouting :: (Prelude.Maybe (Value Prelude.Bool)),
                       namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
                       publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                       securityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       status :: (Prelude.Maybe (Value Prelude.Text)),
                       subnetIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                       workgroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                       workgroupId :: (Prelude.Maybe (Value Prelude.Text)),
                       workgroupName :: (Prelude.Maybe (Value Prelude.Text))}
mkWorkgroupProperty :: WorkgroupProperty
mkWorkgroupProperty
  = WorkgroupProperty
      {baseCapacity = Prelude.Nothing,
       configParameters = Prelude.Nothing, creationDate = Prelude.Nothing,
       endpoint = Prelude.Nothing, enhancedVpcRouting = Prelude.Nothing,
       namespaceName = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, status = Prelude.Nothing,
       subnetIds = Prelude.Nothing, workgroupArn = Prelude.Nothing,
       workgroupId = Prelude.Nothing, workgroupName = Prelude.Nothing}
instance ToResourceProperties WorkgroupProperty where
  toResourceProperties WorkgroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Workgroup.Workgroup",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                            (JSON..=) "ConfigParameters" Prelude.<$> configParameters,
                            (JSON..=) "CreationDate" Prelude.<$> creationDate,
                            (JSON..=) "Endpoint" Prelude.<$> endpoint,
                            (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
                            (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                            (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                            (JSON..=) "WorkgroupArn" Prelude.<$> workgroupArn,
                            (JSON..=) "WorkgroupId" Prelude.<$> workgroupId,
                            (JSON..=) "WorkgroupName" Prelude.<$> workgroupName])}
instance JSON.ToJSON WorkgroupProperty where
  toJSON WorkgroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
               (JSON..=) "ConfigParameters" Prelude.<$> configParameters,
               (JSON..=) "CreationDate" Prelude.<$> creationDate,
               (JSON..=) "Endpoint" Prelude.<$> endpoint,
               (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
               (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
               (JSON..=) "WorkgroupArn" Prelude.<$> workgroupArn,
               (JSON..=) "WorkgroupId" Prelude.<$> workgroupId,
               (JSON..=) "WorkgroupName" Prelude.<$> workgroupName]))
instance Property "BaseCapacity" WorkgroupProperty where
  type PropertyType "BaseCapacity" WorkgroupProperty = Value Prelude.Integer
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {baseCapacity = Prelude.pure newValue, ..}
instance Property "ConfigParameters" WorkgroupProperty where
  type PropertyType "ConfigParameters" WorkgroupProperty = [ConfigParameterProperty]
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {configParameters = Prelude.pure newValue, ..}
instance Property "CreationDate" WorkgroupProperty where
  type PropertyType "CreationDate" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {creationDate = Prelude.pure newValue, ..}
instance Property "Endpoint" WorkgroupProperty where
  type PropertyType "Endpoint" WorkgroupProperty = EndpointProperty
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {endpoint = Prelude.pure newValue, ..}
instance Property "EnhancedVpcRouting" WorkgroupProperty where
  type PropertyType "EnhancedVpcRouting" WorkgroupProperty = Value Prelude.Bool
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty
        {enhancedVpcRouting = Prelude.pure newValue, ..}
instance Property "NamespaceName" WorkgroupProperty where
  type PropertyType "NamespaceName" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {namespaceName = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" WorkgroupProperty where
  type PropertyType "PubliclyAccessible" WorkgroupProperty = Value Prelude.Bool
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty
        {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" WorkgroupProperty where
  type PropertyType "SecurityGroupIds" WorkgroupProperty = ValueList (Value Prelude.Text)
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {securityGroupIds = Prelude.pure newValue, ..}
instance Property "Status" WorkgroupProperty where
  type PropertyType "Status" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {status = Prelude.pure newValue, ..}
instance Property "SubnetIds" WorkgroupProperty where
  type PropertyType "SubnetIds" WorkgroupProperty = ValueList (Value Prelude.Text)
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {subnetIds = Prelude.pure newValue, ..}
instance Property "WorkgroupArn" WorkgroupProperty where
  type PropertyType "WorkgroupArn" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {workgroupArn = Prelude.pure newValue, ..}
instance Property "WorkgroupId" WorkgroupProperty where
  type PropertyType "WorkgroupId" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {workgroupId = Prelude.pure newValue, ..}
instance Property "WorkgroupName" WorkgroupProperty where
  type PropertyType "WorkgroupName" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {workgroupName = Prelude.pure newValue, ..}
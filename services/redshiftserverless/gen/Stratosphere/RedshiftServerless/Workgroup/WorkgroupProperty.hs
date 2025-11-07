module Stratosphere.RedshiftServerless.Workgroup.WorkgroupProperty (
        module Exports, WorkgroupProperty(..), mkWorkgroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.ConfigParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.EndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.PerformanceTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkgroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html>
    WorkgroupProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-basecapacity>
                       baseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-configparameters>
                       configParameters :: (Prelude.Maybe [ConfigParameterProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-creationdate>
                       creationDate :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-endpoint>
                       endpoint :: (Prelude.Maybe EndpointProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-enhancedvpcrouting>
                       enhancedVpcRouting :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-maxcapacity>
                       maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-namespacename>
                       namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-priceperformancetarget>
                       pricePerformanceTarget :: (Prelude.Maybe PerformanceTargetProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-publiclyaccessible>
                       publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-securitygroupids>
                       securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-status>
                       status :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-subnetids>
                       subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-trackname>
                       trackName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-workgrouparn>
                       workgroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-workgroupid>
                       workgroupId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-workgroup.html#cfn-redshiftserverless-workgroup-workgroup-workgroupname>
                       workgroupName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkgroupProperty :: WorkgroupProperty
mkWorkgroupProperty
  = WorkgroupProperty
      {haddock_workaround_ = (), baseCapacity = Prelude.Nothing,
       configParameters = Prelude.Nothing, creationDate = Prelude.Nothing,
       endpoint = Prelude.Nothing, enhancedVpcRouting = Prelude.Nothing,
       maxCapacity = Prelude.Nothing, namespaceName = Prelude.Nothing,
       pricePerformanceTarget = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, status = Prelude.Nothing,
       subnetIds = Prelude.Nothing, trackName = Prelude.Nothing,
       workgroupArn = Prelude.Nothing, workgroupId = Prelude.Nothing,
       workgroupName = Prelude.Nothing}
instance ToResourceProperties WorkgroupProperty where
  toResourceProperties WorkgroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Workgroup.Workgroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseCapacity" Prelude.<$> baseCapacity,
                            (JSON..=) "ConfigParameters" Prelude.<$> configParameters,
                            (JSON..=) "CreationDate" Prelude.<$> creationDate,
                            (JSON..=) "Endpoint" Prelude.<$> endpoint,
                            (JSON..=) "EnhancedVpcRouting" Prelude.<$> enhancedVpcRouting,
                            (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                            (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                            (JSON..=) "PricePerformanceTarget"
                              Prelude.<$> pricePerformanceTarget,
                            (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                            (JSON..=) "TrackName" Prelude.<$> trackName,
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
               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
               (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
               (JSON..=) "PricePerformanceTarget"
                 Prelude.<$> pricePerformanceTarget,
               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
               (JSON..=) "TrackName" Prelude.<$> trackName,
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
instance Property "MaxCapacity" WorkgroupProperty where
  type PropertyType "MaxCapacity" WorkgroupProperty = Value Prelude.Integer
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {maxCapacity = Prelude.pure newValue, ..}
instance Property "NamespaceName" WorkgroupProperty where
  type PropertyType "NamespaceName" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {namespaceName = Prelude.pure newValue, ..}
instance Property "PricePerformanceTarget" WorkgroupProperty where
  type PropertyType "PricePerformanceTarget" WorkgroupProperty = PerformanceTargetProperty
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty
        {pricePerformanceTarget = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" WorkgroupProperty where
  type PropertyType "PubliclyAccessible" WorkgroupProperty = Value Prelude.Bool
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty
        {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" WorkgroupProperty where
  type PropertyType "SecurityGroupIds" WorkgroupProperty = ValueList Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {securityGroupIds = Prelude.pure newValue, ..}
instance Property "Status" WorkgroupProperty where
  type PropertyType "Status" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {status = Prelude.pure newValue, ..}
instance Property "SubnetIds" WorkgroupProperty where
  type PropertyType "SubnetIds" WorkgroupProperty = ValueList Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {subnetIds = Prelude.pure newValue, ..}
instance Property "TrackName" WorkgroupProperty where
  type PropertyType "TrackName" WorkgroupProperty = Value Prelude.Text
  set newValue WorkgroupProperty {..}
    = WorkgroupProperty {trackName = Prelude.pure newValue, ..}
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
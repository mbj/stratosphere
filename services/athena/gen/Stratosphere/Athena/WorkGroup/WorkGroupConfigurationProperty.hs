module Stratosphere.Athena.WorkGroup.WorkGroupConfigurationProperty (
        module Exports, WorkGroupConfigurationProperty(..),
        mkWorkGroupConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.CustomerContentEncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.EngineVersionProperty as Exports
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.ManagedQueryResultsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.ResultConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkGroupConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html>
    WorkGroupConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-additionalconfiguration>
                                    additionalConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-bytesscannedcutoffperquery>
                                    bytesScannedCutoffPerQuery :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-customercontentencryptionconfiguration>
                                    customerContentEncryptionConfiguration :: (Prelude.Maybe CustomerContentEncryptionConfigurationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-enforceworkgroupconfiguration>
                                    enforceWorkGroupConfiguration :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-engineversion>
                                    engineVersion :: (Prelude.Maybe EngineVersionProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-executionrole>
                                    executionRole :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-managedqueryresultsconfiguration>
                                    managedQueryResultsConfiguration :: (Prelude.Maybe ManagedQueryResultsConfigurationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-publishcloudwatchmetricsenabled>
                                    publishCloudWatchMetricsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-requesterpaysenabled>
                                    requesterPaysEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-resultconfiguration>
                                    resultConfiguration :: (Prelude.Maybe ResultConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkGroupConfigurationProperty :: WorkGroupConfigurationProperty
mkWorkGroupConfigurationProperty
  = WorkGroupConfigurationProperty
      {haddock_workaround_ = (),
       additionalConfiguration = Prelude.Nothing,
       bytesScannedCutoffPerQuery = Prelude.Nothing,
       customerContentEncryptionConfiguration = Prelude.Nothing,
       enforceWorkGroupConfiguration = Prelude.Nothing,
       engineVersion = Prelude.Nothing, executionRole = Prelude.Nothing,
       managedQueryResultsConfiguration = Prelude.Nothing,
       publishCloudWatchMetricsEnabled = Prelude.Nothing,
       requesterPaysEnabled = Prelude.Nothing,
       resultConfiguration = Prelude.Nothing}
instance ToResourceProperties WorkGroupConfigurationProperty where
  toResourceProperties WorkGroupConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.WorkGroupConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalConfiguration"
                              Prelude.<$> additionalConfiguration,
                            (JSON..=) "BytesScannedCutoffPerQuery"
                              Prelude.<$> bytesScannedCutoffPerQuery,
                            (JSON..=) "CustomerContentEncryptionConfiguration"
                              Prelude.<$> customerContentEncryptionConfiguration,
                            (JSON..=) "EnforceWorkGroupConfiguration"
                              Prelude.<$> enforceWorkGroupConfiguration,
                            (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                            (JSON..=) "ExecutionRole" Prelude.<$> executionRole,
                            (JSON..=) "ManagedQueryResultsConfiguration"
                              Prelude.<$> managedQueryResultsConfiguration,
                            (JSON..=) "PublishCloudWatchMetricsEnabled"
                              Prelude.<$> publishCloudWatchMetricsEnabled,
                            (JSON..=) "RequesterPaysEnabled" Prelude.<$> requesterPaysEnabled,
                            (JSON..=) "ResultConfiguration" Prelude.<$> resultConfiguration])}
instance JSON.ToJSON WorkGroupConfigurationProperty where
  toJSON WorkGroupConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalConfiguration"
                 Prelude.<$> additionalConfiguration,
               (JSON..=) "BytesScannedCutoffPerQuery"
                 Prelude.<$> bytesScannedCutoffPerQuery,
               (JSON..=) "CustomerContentEncryptionConfiguration"
                 Prelude.<$> customerContentEncryptionConfiguration,
               (JSON..=) "EnforceWorkGroupConfiguration"
                 Prelude.<$> enforceWorkGroupConfiguration,
               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
               (JSON..=) "ExecutionRole" Prelude.<$> executionRole,
               (JSON..=) "ManagedQueryResultsConfiguration"
                 Prelude.<$> managedQueryResultsConfiguration,
               (JSON..=) "PublishCloudWatchMetricsEnabled"
                 Prelude.<$> publishCloudWatchMetricsEnabled,
               (JSON..=) "RequesterPaysEnabled" Prelude.<$> requesterPaysEnabled,
               (JSON..=) "ResultConfiguration" Prelude.<$> resultConfiguration]))
instance Property "AdditionalConfiguration" WorkGroupConfigurationProperty where
  type PropertyType "AdditionalConfiguration" WorkGroupConfigurationProperty = Value Prelude.Text
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {additionalConfiguration = Prelude.pure newValue, ..}
instance Property "BytesScannedCutoffPerQuery" WorkGroupConfigurationProperty where
  type PropertyType "BytesScannedCutoffPerQuery" WorkGroupConfigurationProperty = Value Prelude.Integer
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {bytesScannedCutoffPerQuery = Prelude.pure newValue, ..}
instance Property "CustomerContentEncryptionConfiguration" WorkGroupConfigurationProperty where
  type PropertyType "CustomerContentEncryptionConfiguration" WorkGroupConfigurationProperty = CustomerContentEncryptionConfigurationProperty
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {customerContentEncryptionConfiguration = Prelude.pure newValue,
         ..}
instance Property "EnforceWorkGroupConfiguration" WorkGroupConfigurationProperty where
  type PropertyType "EnforceWorkGroupConfiguration" WorkGroupConfigurationProperty = Value Prelude.Bool
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {enforceWorkGroupConfiguration = Prelude.pure newValue, ..}
instance Property "EngineVersion" WorkGroupConfigurationProperty where
  type PropertyType "EngineVersion" WorkGroupConfigurationProperty = EngineVersionProperty
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {engineVersion = Prelude.pure newValue, ..}
instance Property "ExecutionRole" WorkGroupConfigurationProperty where
  type PropertyType "ExecutionRole" WorkGroupConfigurationProperty = Value Prelude.Text
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {executionRole = Prelude.pure newValue, ..}
instance Property "ManagedQueryResultsConfiguration" WorkGroupConfigurationProperty where
  type PropertyType "ManagedQueryResultsConfiguration" WorkGroupConfigurationProperty = ManagedQueryResultsConfigurationProperty
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {managedQueryResultsConfiguration = Prelude.pure newValue, ..}
instance Property "PublishCloudWatchMetricsEnabled" WorkGroupConfigurationProperty where
  type PropertyType "PublishCloudWatchMetricsEnabled" WorkGroupConfigurationProperty = Value Prelude.Bool
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {publishCloudWatchMetricsEnabled = Prelude.pure newValue, ..}
instance Property "RequesterPaysEnabled" WorkGroupConfigurationProperty where
  type PropertyType "RequesterPaysEnabled" WorkGroupConfigurationProperty = Value Prelude.Bool
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {requesterPaysEnabled = Prelude.pure newValue, ..}
instance Property "ResultConfiguration" WorkGroupConfigurationProperty where
  type PropertyType "ResultConfiguration" WorkGroupConfigurationProperty = ResultConfigurationProperty
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {resultConfiguration = Prelude.pure newValue, ..}
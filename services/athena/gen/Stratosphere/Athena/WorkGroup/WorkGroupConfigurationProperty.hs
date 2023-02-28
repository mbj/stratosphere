module Stratosphere.Athena.WorkGroup.WorkGroupConfigurationProperty (
        module Exports, WorkGroupConfigurationProperty(..),
        mkWorkGroupConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.EngineVersionProperty as Exports
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.ResultConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkGroupConfigurationProperty
  = WorkGroupConfigurationProperty {bytesScannedCutoffPerQuery :: (Prelude.Maybe (Value Prelude.Integer)),
                                    enforceWorkGroupConfiguration :: (Prelude.Maybe (Value Prelude.Bool)),
                                    engineVersion :: (Prelude.Maybe EngineVersionProperty),
                                    publishCloudWatchMetricsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                    requesterPaysEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                    resultConfiguration :: (Prelude.Maybe ResultConfigurationProperty)}
mkWorkGroupConfigurationProperty :: WorkGroupConfigurationProperty
mkWorkGroupConfigurationProperty
  = WorkGroupConfigurationProperty
      {bytesScannedCutoffPerQuery = Prelude.Nothing,
       enforceWorkGroupConfiguration = Prelude.Nothing,
       engineVersion = Prelude.Nothing,
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
                           [(JSON..=) "BytesScannedCutoffPerQuery"
                              Prelude.<$> bytesScannedCutoffPerQuery,
                            (JSON..=) "EnforceWorkGroupConfiguration"
                              Prelude.<$> enforceWorkGroupConfiguration,
                            (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                            (JSON..=) "PublishCloudWatchMetricsEnabled"
                              Prelude.<$> publishCloudWatchMetricsEnabled,
                            (JSON..=) "RequesterPaysEnabled" Prelude.<$> requesterPaysEnabled,
                            (JSON..=) "ResultConfiguration" Prelude.<$> resultConfiguration])}
instance JSON.ToJSON WorkGroupConfigurationProperty where
  toJSON WorkGroupConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BytesScannedCutoffPerQuery"
                 Prelude.<$> bytesScannedCutoffPerQuery,
               (JSON..=) "EnforceWorkGroupConfiguration"
                 Prelude.<$> enforceWorkGroupConfiguration,
               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
               (JSON..=) "PublishCloudWatchMetricsEnabled"
                 Prelude.<$> publishCloudWatchMetricsEnabled,
               (JSON..=) "RequesterPaysEnabled" Prelude.<$> requesterPaysEnabled,
               (JSON..=) "ResultConfiguration" Prelude.<$> resultConfiguration]))
instance Property "BytesScannedCutoffPerQuery" WorkGroupConfigurationProperty where
  type PropertyType "BytesScannedCutoffPerQuery" WorkGroupConfigurationProperty = Value Prelude.Integer
  set newValue WorkGroupConfigurationProperty {..}
    = WorkGroupConfigurationProperty
        {bytesScannedCutoffPerQuery = Prelude.pure newValue, ..}
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